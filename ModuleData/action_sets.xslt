<?xml version="1.0" encoding="utf-8"?>
<!-- Replace vanilla camel jump takeoff stubs (camel_stand).
     Native has camel_jump_forward but no camel_jump_high takeoff clip.
     High takeoff uses camel_jump_loop to match the rider high-jump set. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="yes" indent="yes" />

	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="action_set[@id='as_camel']/action[@type='act_camel_jump_forward']/@animation">
		<xsl:attribute name="animation">camel_jump_forward</xsl:attribute>
	</xsl:template>

	<xsl:template match="action_set[@id='as_camel']/action[@type='act_camel_jump_high']/@animation">
		<xsl:attribute name="animation">camel_jump_loop</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>
