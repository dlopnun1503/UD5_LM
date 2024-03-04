<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Canciones de Music Universal Latino</title>
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
    <h2>Canciones de Music Universal Latino</h2>
    <table>
      <tr>
        <th>Título</th>
        <th>Artista</th>
        <th>Duración</th>
      </tr>
      <xsl:for-each select="CDs/CD[selloDisc='Universal Music Latino']/canciones/cancion">
        <tr>
          <td><xsl:value-of select="tituloCan"/></td>
          <td><xsl:value-of select="../../artista"/></td>
          <td><xsl:value-of select="duracion"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>