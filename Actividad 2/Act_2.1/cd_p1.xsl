<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Discos de Música</title>
    <style>
      table {
        border-collapse: collapse;
        width: 100%;
      }
      th, td {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }
      th {
        background-color: #f2f2f2;
      }
    </style>
  </head>
  <body>
    <h2>Discos de Música</h2>
    <table>
      <tr>
        <th>Título</th>
        <th>Artista</th>
        <th>Año de Publicación</th>
        <th>Sello Discográfico</th>
        <th>Canciones</th>
      </tr>
      <xsl:for-each select="CDs/CD">
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="artista"/></td>
          <td><xsl:value-of select="anioPublicacion"/></td>
          <td><xsl:value-of select="selloDisc"/></td>
          <td>
            <xsl:for-each select="canciones/cancion">
              <xsl:value-of select="tituloCan"/>
            </xsl:for-each>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>