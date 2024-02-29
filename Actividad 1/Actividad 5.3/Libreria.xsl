<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
      <html>
        <body>
            <h1>Mi biblioteca</h1>
                 <table>
                    <tr bgcolor="#887788">
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro[autor='Miguel de Cervantes' and precio > 12]"> <!--SI CAMBIAMOS EL 12 POR UN 10 NOS APARECEN LOS DOS LIBROS-->
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