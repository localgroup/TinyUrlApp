package com.TinyUrlApp.Controller;

import java.util.HashMap;
import java.util.Map;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.exceptions.JedisException;

public class JedisMain {

	// address of your redis server
	private static final String redisHost = "localhost";
	private static final Integer redisPort = 6379;
	private static final String key = "tinyUrl";
	private static String LASTGENERATEDKEY="lastGeneratedKey";
	private static final String STARTKEY = "0";

	// the jedis connection pool..
	private static JedisPool pool = null;

	public JedisMain() {
		// configure our pool connection
		pool = new JedisPool(redisHost, redisPort);

	}

	public static String getOriginalURLbyTinyUrl(String tinyURL) {
		Jedis jedis = null;
		String originalURL = "";
		try {
			jedis = pool.getResource();
			// after saving the data, lets retrieve them to be sure that it has
			// really added in redis
			originalURL = jedis.get(tinyURL);

		} catch (JedisException e) {
			// if something wrong happen, return it back to the pool
			if (null != jedis) {
				pool.returnBrokenResource(jedis);
				jedis = null;
			}
		} finally {
			// /it's important to return the Jedis instance to the pool once
			// you've finished using it
			if (null != jedis)
				pool.returnResource(jedis);
		}
		
		return originalURL;
		
	}
	
	public static String getLastGeneratedKey() {
		Map<String, String> map = new HashMap<String, String>();

		Jedis jedis = null;
		String lastGeneratedKey = STARTKEY;
		try {
			// save to redis
			jedis = pool.getResource();
			lastGeneratedKey =jedis.get(LASTGENERATEDKEY);
			if(lastGeneratedKey ==null) {
				lastGeneratedKey=STARTKEY;
			}

		} catch (JedisException e) {
			// if something wrong happen, return it back to the pool
			
			if (null != jedis) {
				pool.returnBrokenResource(jedis);
				jedis = null;
			}
			throw new JedisException("Exception occurred while Connecting redis server");
		} finally {
			// /it's important to return the Jedis instance to the pool once
			// you've finished using it
			if (null != jedis)
				pool.returnResource(jedis);
		}
		return lastGeneratedKey;
		
	}

	public void addURLToDB(String tinyUrl, String originalUrl) {
		// add some values in Redis cache

		Map<String, String> map = new HashMap<String, String>();

		Jedis jedis = null;
		try {
			// save to redis
			jedis = pool.getResource();
			jedis.set(tinyUrl, originalUrl);
			jedis.set(LASTGENERATEDKEY,tinyUrl);
			jedis.save();

		} catch (JedisException e) {
			// if something wrong happen, return it back to the pool
			
			if (null != jedis) {
				pool.returnBrokenResource(jedis);
				jedis = null;
			}
			throw new JedisException("Exception occurred while Connecting redis server");
		} finally {
			// /it's important to return the Jedis instance to the pool once
			// you've finished using it
			if (null != jedis)
				pool.returnResource(jedis);
		}
	}

}
