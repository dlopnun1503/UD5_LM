<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
      <html>
        <body>
            <h1>Mi biblioteca</h1>
                 <table>
                    <tr bgcolor="#887788">
                        <th>ISBN</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                    <tr>
                        <td><xsl:value-of select="isbn"/></td>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="precio &gt; 25">
                                    <xsl:attribute name="bgcolor">#ff0000</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="bgcolor">#00FF00</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:value-of select="precio"/>
                        </td>
                    </tr>
                    </xsl:for-each>
                 </table>
        </body>
      </html>
</xsl:template>
</xsl:stylesheet>