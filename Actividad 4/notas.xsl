<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
  <html>
    <head>
      <h1>Notas convocatoria de junio</h1>
      <style type="text/css">
        .center {
          margin: auto;
          width: 50%;
        }
        th, td {
          padding: 10px;
          text-align: center;
        }
        th {
          background-color: #f2f2f2;
        }
        .sobresaliente {
          color: blue;
        }
        .notable {
          color: #3366ff;
        }
        .bien {
          color: black;
        }
        .suficiente {
          color: orange;
        }
        .suspenso {
          color: red;
        }
      </style>
    </head>
      <body>
        <div class="center">
          <table border="1">
            <thead>
              <tr>
                <th colspan="3">Datos</th>
                <th colspan="3">Notas</th>
              </tr>
              <tr>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Cuestionarios</th>
                <th>Tareas</th>
                <th>Examen</th>
                <th>Final</th>
              </tr>
            </thead> 
            <tbody>
              <xsl:apply-templates select="notas/alumno[@convocatoria = 'Junio']"/>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="alumno">
    <xsl:variable name="final" select="final"/>
    <tr>
      <xsl:if test="$final &gt;= 9">
        <xsl:attribute name="class">sobresaliente</xsl:attribute>
      </xsl:if>
      <xsl:if test="$final &gt;= 7 and $final &lt; 9">
        <xsl:attribute name="class">notable</xsl:attribute>
      </xsl:if>
      <xsl:if test="$final &gt;= 6 and $final &lt; 7">
        <xsl:attribute name="class">bien</xsl:attribute>
      </xsl:if>
      <xsl:if test="$final &gt;= 5 and $final &lt; 6">
        <xsl:attribute name="class">suficiente</xsl:attribute>
      </xsl:if>
      <xsl:if test="$final &lt; 5">
        <xsl:attribute name="class">suspenso</xsl:attribute>
      </xsl:if>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellidos"/></td>
      <td><xsl:value-of select="cuestionarios"/></td>
      <td><xsl:value-of select="tareas"/></td>
      <td><xsl:value-of select="examen"/></td>
      <td><xsl:value-of select="final"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>