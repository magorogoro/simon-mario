<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <style>
          *{
            font-family: 'Open Sans', sans-serif;
          }        
          table {
            border-collapse: collapse;
            width: 100%;
          }
          th, td {
            text-align: left;
            padding: 8px;
          }
          th {
            background-color: #4CAF50;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f2f2f2;
          }
          a {
            color: blue;
            text-decoration: none;
          }

          tr:hover {
            background:#007a06;
            color: #ffffff;
            cursor: pointer;
          
          }
          
        </style>
      </head>
      <body>
        <h1>Recetass</h1>
        <p>tabla</p>
        <table>
          <tr>
            <th>Título</th>
            <th>Tiempo</th>
            <th>Dificultad</th>
            <th>Enlace</th>
          </tr>
          <xsl:for-each select="recetas/receta">
            <tr>
              <td><xsl:value-of select="titulo"/></td>
              <td><xsl:value-of select="tiempo"/></td>
              <td><xsl:value-of select="dificultad"/></td>
              <td><a href=""><xsl:value-of select="enlace"/></a></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
