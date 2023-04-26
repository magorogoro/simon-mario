<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <style>
         body{
          background:red;
         }
          th{
            background: orange;
            color: white;
          }
        </style>
      </head>
      <body>
        <h1>Recetas</h1>
        <table>
          <tr> 
            <th>Titulo</th>
            <th>Tiempo</th>
            <th>Dificultad</th>
            <th>Enlace</th>
          </tr>
          <xsl:apply-templates select="recetas/receta">
            <xsl:sort select="titulo" order="ascending" />
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="receta">
    <tr>
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="tiempo"/></td>
      <td><xsl:value-of select="dificultad"/></td>
      <td><a href="{enlace}">Ver receta</a></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
