<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/root">
    <xsl:apply-templates select="record[date/year &gt;= '1789']">
      <xsl:sort select="date" order="descending"/>
    </xsl:apply-templates>
  </xsl:template>
  <xsl:template match="record">
    <xsl:value-of select="concat(id, ', ', title, ', ', date/@when)"/>
    <xsl:text>&#xA;</xsl:text>
  </xsl:template>
</xsl:stylesheet>