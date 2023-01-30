<!-- 
    xml-to-string by Stephan Cieszynski, 2023


 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:strip-space elements="*"/>

    <xsl:key name="attribute-namespace-uri" match="@*[namespace-uri()]" use="namespace-uri()" />

    <xsl:template name="xml-to-string">
        <xsl:param name="node-set" select="."/>
        <xsl:apply-templates select="$node-set" mode="xml-to-string">
            <xsl:with-param name="depth" select="1"/>
        </xsl:apply-templates>
    </xsl:template>

<!--     <xsl:template match="/">
        <xsl:apply-templates mode="xml-to-string"/>
    </xsl:template> -->

    <xsl:template name="xmlns">
        <xsl:value-of select="' '"/>
        <xsl:value-of select="'xmlns'"/>
        <xsl:if test="not(name()=local-name())">
            <xsl:value-of select="':'"/>
            <xsl:value-of select="substring-before(name(.), ':')"/>
        </xsl:if>
        <xsl:value-of select="'='"/>
        <xsl:value-of select="'&quot;'"/>
        <xsl:value-of select="namespace-uri()"/>
        <xsl:value-of select="'&quot;'"/>
    </xsl:template>

    <xsl:template match="@*" mode="xml-to-string">
        <xsl:value-of select="' '"/>
        <xsl:value-of select="name(.)"/>
        <xsl:value-of select="'='"/>
        <xsl:value-of select="'&quot;'"/>
        <xsl:value-of select="string(.)"/>
        <xsl:value-of select="'&quot;'"/>
    </xsl:template>

    <xsl:template match="@*" mode="xml-to-string-xmlns">
        <xsl:call-template name="xmlns"/>
    </xsl:template>

    <xsl:template match="node()" mode="xml-to-string">
        <xsl:param name="ns"/>

        <xsl:value-of select="'&lt;'"/>
        <xsl:value-of select="name(.)"/>

        <xsl:if test="string-length(namespace-uri()) and not(contains($ns, namespace-uri()))">
            <xsl:call-template name="xmlns"/>
        </xsl:if>

        <!-- Add currently unknown attribute-namespaces to this node -->
        <xsl:apply-templates mode="xml-to-string-xmlns" select="@*[
            namespace-uri() != namespace-uri(..) and 
            generate-id() = generate-id(
                key('attribute-namespace-uri', namespace-uri())
            )]"/>

        <xsl:apply-templates select="@*" mode="xml-to-string"/>
        <xsl:value-of select="'&gt;'"/>

        <xsl:apply-templates mode="xml-to-string">
            <xsl:with-param name="ns">
                <!-- Add attribute-namespaces to namespaces-list -->
                <xsl:variable name="new-namespaces">
                    <xsl:for-each select="@*[
                        namespace-uri() != namespace-uri(..) and 
                        generate-id() = generate-id(
                            key('attribute-namespace-uri', namespace-uri())
                        )]">
                        <xsl:if test="not(contains($ns, namespace-uri()))">
                            <xsl:value-of select="concat('-', namespace-uri())"/>
                        </xsl:if>
                    </xsl:for-each>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="contains($ns, namespace-uri())">
                        <xsl:value-of select="concat($ns, $new-namespaces)"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="concat($ns, '-', namespace-uri(), $new-namespaces)"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:with-param>
        </xsl:apply-templates>

        <xsl:value-of select="'&lt;/'"/>
        <xsl:value-of select="name(.)"/>
        <xsl:value-of select="'&gt;'"/>
    </xsl:template>

    <xsl:template match="text()" mode="xml-to-string">
        <xsl:value-of select="string(.)"/>
    </xsl:template>

    <xsl:template match="processing-instruction()" mode="xml-to-string"/>
    <xsl:template match="comment()" mode="xml-to-string"/>

    <xsl:output method="text" indent="no"/>
</xsl:stylesheet>