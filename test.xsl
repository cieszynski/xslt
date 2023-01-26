<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:import href="xml-to-string.xsl" />

    <xsl:template match="/">
        <xsl:call-template name="xml-to-string"/>
    </xsl:template>

    <xsl:output method="text" indent="no"/>
</xsl:transform>