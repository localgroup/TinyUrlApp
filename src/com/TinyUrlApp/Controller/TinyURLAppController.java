package com.TinyUrlApp.Controller;

import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

import spark.Request;
import spark.Response;
import spark.Route;
import spark.Spark;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class TinyURLAppController {

	private static final String EXCEPTIONSTRING = "Exception occurred while retrieving Original URL via tinyURl";
	private static final String CONNECTIONFAILURE = "Exception occurred while Connecting redis server";
	private static final String INVALIDSTRING = "The URL entered is invalid. (is http:// missing?)";
	private static final String EMPTYSTRING = "";
	private static JedisMain main = new JedisMain();
	private static Template template = null;

	/**
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {

		Spark.get(new Route("/tinyUrl") {

			@Override
			public Object handle(Request req, Response res) {

				Configuration cfg = new Configuration();

				StringWriter writer = new StringWriter();
				try {
					template = cfg
							.getTemplate("src/ftl/tinyUIAppHome.ftl");
					Map<String, Object> attributes = new HashMap<String, Object>();
					template.process(attributes, writer);

				} catch (IOException e) {

					e.printStackTrace();
				} catch (TemplateException e) {

					e.printStackTrace();
				}
				return writer;
			}

		});

		Spark.get(new Route("/getTinyUrl") {

			@Override
			public Object handle(Request req, Response res) {
				String originalUrlName = req.queryParams("url");
				if (originalUrlName == null || originalUrlName.isEmpty()) {
					return INVALIDSTRING;
				}
				originalUrlName = originalUrlName.trim();
				boolean isValidURL = false;
				if (originalUrlName.startsWith("http")
						|| originalUrlName.startsWith("https")
						|| originalUrlName.startsWith("www")) {
					isValidURL = true;
				}
				if (!isValidURL) {
					return INVALIDSTRING;
				}
				try {
					synchronized (KeyGenerator.lastGeneratedKey) {
						String lastGeneratedKey = JedisMain
								.getLastGeneratedKey();
						String tinyurl = KeyGenerator
								.generateNextOf(lastGeneratedKey);
						main.addURLToDB(tinyurl, originalUrlName);
						res.status(200);
						return tinyurl;
					}
				} catch (Exception e) {
					return CONNECTIONFAILURE;
				}

			}

		});

		Spark.get(new Route("/:param") {
			@Override
			public Object handle(Request request, Response response) {
				
				
				Configuration cfg = new Configuration();
				String originalUrl = EMPTYSTRING;
				StringWriter writer = new StringWriter();
				try {
					String tinyURL = request.params("param");
					originalUrl = JedisMain.getOriginalURLbyTinyUrl(tinyURL);

					if (originalUrl == null || originalUrl.isEmpty()) {
						return EXCEPTIONSTRING;
					}
					
					Map<String, Object> attributes = new HashMap<String, Object>();
					attributes.put("originalUrl", originalUrl);
					
					template = cfg
							.getTemplate("src/ftl/RedirectUrl.ftl");
					template.process(attributes, writer);

				} catch (IOException e) {
					response.status(301);
					response.redirect(originalUrl);
					
				} catch (TemplateException e) {
					response.status(301);
					response.redirect(originalUrl);
				}
				return writer;
			}
		});

	}

}
