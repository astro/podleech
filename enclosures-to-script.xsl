<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns="http://www.w3.org/2005/Atom">

  <xsl:output method="text"/>

  <xsl:template match="child::*[name() = 'link' and @rel = 'enclosure']">
    <xsl:text>wget -c '</xsl:text><xsl:value-of select="@href"/><xsl:text>'
</xsl:text>
  </xsl:template>

  <xsl:template match="*">
    <xsl:apply-templates select="child::*"/>
  </xsl:template>

</xsl:stylesheet>
