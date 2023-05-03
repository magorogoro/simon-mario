<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="ciudadesOrden.css" />
				<title>Ejemplo XSLT</title>
			</head>
			<body>
				<h1> :-) LISTA DE CIUDADES  </h1>
		 		<xsl:apply-templates select="ciudades/ciudad" >
          			<xsl:sort select="habitantes" order="descending" />
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="//ciudad">
		 <h1> <xsl:value-of select="habitantes" /> </h1>
		 		 <p> <xsl:value-of select="nombre" /> </p>

	</xsl:template>

	<xsl:template match="//ciudad">
		 <h1> <xsl:value-of select="habitantes" /> </h1>
		 		 <p> <xsl:value-of select="nombre" /> </p>

	</xsl:template>v
	
</xsl:stylesheet>
