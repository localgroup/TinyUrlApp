<!DOCTYPE html>
<html>
<body>
<script type="text/javascript">
 <#include "JQuery.ftl">
   $(document).ready( function() {
      var url = "${originalUrl}";
      $(location).attr("href", url);
   });
</script>
</body>
</html>