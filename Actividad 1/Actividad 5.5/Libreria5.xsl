<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
      <html>
        <body>
            <h1>Mi biblioteca personal</h1>
                 <table>
                    <tr bgcolor="#887788">
                        <th>ISBN</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                        <th>Numero de Paginas</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                    <tr>
                        <td><xsl:value-of select="isbn"/></td>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:if test="numPaginas &gt; 150">
                            <xsl:attribute name="style">color:red;</xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="numPaginas"/></td>
                    </tr>
                    </xsl:for-each>
                 </table>
        </body>
      </html>
</xsl:template>
</xsl:stylesheet>