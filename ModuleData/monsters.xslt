<?xml version="1.0" encoding="utf-8"?>
<!-- Match horse jump_speed_limit. Vanilla camel uses 100.0. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="yes" indent="yes" />

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="Monster[@id='camel']/@jump_speed_limit">
		<xsl:attribute name="jump_speed_limit">3.5</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>
