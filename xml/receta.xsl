<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
      </head>
      <body>
        <h1>Recetas</h1>
   
          <xsl:apply-templates select="recetas/receta" />
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="receta">
    <xsl:if test="tiempo = '30 minutos'">
      <ul>
        <li><xsl:value-of select="titulo"/></li>
      </ul>
    </xsl:if>
  </xsl:template>
  
</xsl:stylesheet>
