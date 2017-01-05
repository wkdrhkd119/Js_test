<?xml version="1.0" encoding="UTF-8" ?>
  
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method = "html" indent="yes" encoding="UTF-8" />
<xsl:template match="teaminfo">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"></meta>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
</head>
<body>
<table class="table table-bordered">
	<tr>
	<th>이름</th>
	<th>번호</th>
	<th>주소</th>
	</tr>
<xsl:for-each select="team">
	<tr>
	<td><xsl:value-of select="name" /></td>
	<td><xsl:value-of select="phone" /></td>
	<td><xsl:value-of select="address" /></td>
	</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>