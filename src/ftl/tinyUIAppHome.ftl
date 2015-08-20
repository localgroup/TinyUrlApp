
<!DOCTYPE html>
<html lang='en'>
  <head>
    <title>Tiny URL Mapping Tool</title>
    <meta charset='utf-8' />
    <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible' />
     <style type="text/css">
     <#include "tinyUrlAppCSS.ftl">
       </style>
     
      <script type="text/javascript">
       <#include "ModernizrJs.ftl">
      </script>
  </head>
  <body>
    <div id='container'>
      <div id='bar'>
        <span id="error" class='arrow_box'>
        </span>
        <div class='side' id='front'>
          <form action="/getTinyUrl" method="get">
            <h1 class="logo">TINY!</h1>
            <input id="input-url" placeholder="Enter a URL to shorten..." type="text" />
            <button>Shorten</button>
          </form>
        </div>
        <div class='side' id='back'>
          <h1 class="logo">TINY!</h1>
          <input id="output-url" readonly type="text" />
          <a id="restart" href="#">Shorten another URL</a>
        </div>
      </div>
    </div>
  </body>
  <script type="text/javascript">
 <#include "JQuery.ftl">
 <#include "jquery.defaultvalueJs.ftl">
 $(document).ready(function() {
 TinyURL.init();
});

var TinyURL = {
  url: 'http://localhost:4567',
  init: function() {
    TinyURL.initBrowserFallbacks();
    TinyURL.observeFormSubmissions();
    TinyURL.observeRestarts();
  },

  initBrowserFallbacks: function() {
    if (!Modernizr.input.placeholder) {
      $('input[placeholder]').each(function(input) {
        $(this).defaultValue($(this).attr('placeholder'), 'active', 'inactive');
      });
    }
  },
 
  observeFormSubmissions: function() {
    $('form').submit(function(e) {
      var form = $(e.target)
      e.preventDefault();

      $.ajax(
        { type: form.attr('method')
        , url: form.attr('action')
        , data:
          { url: $('#input-url').val()
          }
        , success: function(data) {
            var outputURL = TinyURL.url + "/" + data;
            if(data == "Exception occurred while Connecting redis server")
            {
             $('#error').text(data)
            $('#input-url').addClass('error');
            $('.arrow_box').show();
            } else if(data == "The URL entered is invalid. (is http:// missing?)") {
              $('#error').text(data)
            $('#input-url').addClass('error');
            $('.arrow_box').show();
            }
            else
            {
              $('#output-url').val(outputURL).select();
            $('#input-url').removeClass('error');
            $('.arrow_box').hide();
            $('#bar').addClass('flipped');
            }
          
          }
        , error: function(xhr, ajaxOptions, thrownError) {
            $('#error').text(xhr.responseText)
            $('#input-url').addClass('error');
            $('.arrow_box').show();
          }
        }
      )
    });
  },

  observeRestarts: function() {
    $('a#restart').click(function(e) {
      e.preventDefault();
      $('#input-url').val('').focus();
      $('#output-url').val('');
      $('#bar').removeClass('flipped');
    });
  }
};
  
    TinyURL.url = "http://localhost:4567";
  </script>
</html>
