<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
      <html>
        <body>
            <h1>Mi biblioteca</h1>
            <h2>Libros de Alberto Sanchez</h2>
                 <table>
                    <tr bgcolor="#887788">
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro [autor='Alberto Sanchez']">
                    <xsl:sort select="precio" data-type="number" order="ascending"/>
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                    </xsl:for-each>
                 </table>
                 <h2>Libros de otros autores</h2>
            <table>
                <tr bgcolor="#887788">
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Precio</th>
                </tr>
                <xsl:for-each select="libreria/libro[not(autor='Alberto Sanchez')]">
                    <xsl:sort select="precio" data-type="number" order="ascending"/>
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
      </html>
</xsl:template>
</xsl:stylesheet>