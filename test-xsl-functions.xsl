<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    xmlns:exsl="http://exslt.org/common"
    xmlns:math="http://exslt.org/math"
    xmlns:regexp="http://exslt.org/regular-expressions"
    xmlns:set="http://exslt.org/sets"
    xmlns:str="http://exslt.org/strings">


    <xsl:template match="/">
        <html lang="de">
            <head>
                <title>xsl functions</title>
            </head>
            <body>
                <!-- https://www.w3schools.com/xmL/xsl_functions.asp#xsltfunctions -->
                <p>
                    <xsl:value-of select="system-property('xsl:version')" />
 xsl:version
                    <br />
                    <xsl:value-of select="system-property('xsl:vendor')" />
 xsl:vendor
                    <h2>Accessor Functions</h2>
                    <xsl:value-of select="function-available('node-name')" />
 node-name
                    <br />
                    <xsl:value-of select="function-available('nilled')" />
 nilled
                    <br />
                    <xsl:value-of select="function-available('data')" />
 data
                    <br />
                    <xsl:value-of select="function-available('base-uri')" />
 base-uri
                    <br />
                    <xsl:value-of select="function-available('document-uri')" />
 document-uri
                    <h2>Error and Trace Functions</h2>
                    <xsl:value-of select="function-available('error')" />
 error
                    <br />
                    <xsl:value-of select="function-available('trace')" />
 trace
                    <h2>Functions on Numeric Values</h2>
                    <xsl:value-of select="function-available('number')" />
 number
                    <br />
                    <xsl:value-of select="function-available('abs')" />
 abs
                    <br />
                    <xsl:value-of select="function-available('ceiling')" />
 ceiling
                    <br />
                    <xsl:value-of select="function-available('floor')" />
 floor
                    <br />
                    <xsl:value-of select="function-available('round')" />
 round
                    <br />
                    <xsl:value-of select="function-available('round-half-to-even')" />
 round-half-to-even
                    <h2>Functions on Strings</h2>
                    <xsl:value-of select="function-available('string')" />
 string
                    <br />
                    <xsl:value-of select="function-available('codepoints-to-string')" />
 codepoints-to-string
                    <br />
                    <xsl:value-of select="function-available('string-to-codepoints')" />
 string-to-codepoints
                    <br />
                    <xsl:value-of select="function-available('codepoint-equal')" />
 codepoint-equal
                    <br />
                    <xsl:value-of select="function-available('compare')" />
 compare
                    <br />
                    <xsl:value-of select="function-available('concat')" />
 concat
                    <br />
                    <xsl:value-of select="function-available('string-join')" />
 string-join
                    <br />
                    <xsl:value-of select="function-available('substring')" />
 substring
                    <br />
                    <xsl:value-of select="function-available('string-length')" />
 string-length
                    <br />
                    <xsl:value-of select="function-available('normalize-space')" />
 normalize-space
                    <br />
                    <xsl:value-of select="function-available('normalize-unicode')" />
 normalize-unicode
                    <br />
                    <xsl:value-of select="function-available('upper-case')" />
 upper-case
                    <br />
                    <xsl:value-of select="function-available('lower-case')" />
 lower-case
                    <br />
                    <xsl:value-of select="function-available('translate')" />
 translate
                    <br />
                    <xsl:value-of select="function-available('escape-uri')" />
 escape-uri
                    <br />
                    <xsl:value-of select="function-available('contains')" />
 contains
                    <br />
                    <xsl:value-of select="function-available('starts-with')" />
 starts-with
                    <br />
                    <xsl:value-of select="function-available('ends-with')" />
 ends-with
                    <br />
                    <xsl:value-of select="function-available('substring-before')" />
 substring-before
                    <br />
                    <xsl:value-of select="function-available('substring-after')" />
 substring-after
                    <br />
                    <xsl:value-of select="function-available('matches')" />
 matches
                    <br />
                    <xsl:value-of select="function-available('replace')" />
 replace
                    <br />
                    <xsl:value-of select="function-available('tokenize')" />
 tokenize
                    <h2>Functions for anyURI</h2>
                    <xsl:value-of select="function-available('resolve-uri')" />
 resolve-uri
                    <h2>Functions on Boolean Values</h2>
                    <xsl:value-of select="function-available('boolean')" />
 boolean
                    <br />
                    <xsl:value-of select="function-available('not')" />
 not
                    <br />
                    <xsl:value-of select="function-available('true')" />
 true
                    <br />
                    <xsl:value-of select="function-available('false')" />
 false
                    <h2>Functions on Durations, Dates and Times</h2>
                    <xsl:value-of select="function-available('dateTime')" />
 dateTime
                    <br />
                    <xsl:value-of select="function-available('years-from-duration')" />
 years-from-duration
                    <br />
                    <xsl:value-of select="function-available('months-from-duration')" />
 months-from-duration
                    <br />
                    <xsl:value-of select="function-available('days-from-duration')" />
 days-from-duration
                    <br />
                    <xsl:value-of select="function-available('hours-from-duration')" />
 hours-from-duration
                    <br />
                    <xsl:value-of select="function-available('minutes-from-duration')" />
 minutes-from-duration
                    <br />
                    <xsl:value-of select="function-available('seconds-from-duration')" />
 seconds-from-duration
                    <br />
                    <xsl:value-of select="function-available('year-from-dateTime')" />
 year-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('month-from-dateTime')" />
 month-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('day-from-dateTime')" />
 day-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('hours-from-dateTime')" />
 hours-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('minutes-from-dateTime')" />
 minutes-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('seconds-from-dateTime')" />
 seconds-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('timezone-from-dateTime')" />
 timezone-from-dateTime
                    <br />
                    <xsl:value-of select="function-available('year-from-date')" />
 year-from-date
                    <br />
                    <xsl:value-of select="function-available('month-from-date')" />
 month-from-date
                    <br />
                    <xsl:value-of select="function-available('day-from-date')" />
 day-from-date
                    <br />
                    <xsl:value-of select="function-available('timezone-from-date')" />
 timezone-from-date
                    <br />
                    <xsl:value-of select="function-available('hours-from-time')" />
 hours-from-time
                    <br />
                    <xsl:value-of select="function-available('minutes-from-time')" />
 minutes-from-time
                    <br />
                    <xsl:value-of select="function-available('seconds-from-time')" />
 seconds-from-time
                    <br />
                    <xsl:value-of select="function-available('timezone-from-time')" />
 timezone-from-time
                    <br />
                    <xsl:value-of select="function-available('adjust-dateTime-to-timezone')" />
 adjust-dateTime-to-timezone
                    <br />
                    <xsl:value-of select="function-available('adjust-date-to-timezone')" />
 adjust-date-to-timezone
                    <br />
                    <xsl:value-of select="function-available('adjust-time-to-timezone')" />
 adjust-time-to-timezone
                    <h2>Functions Related to QNames</h2>
                    <xsl:value-of select="function-available('QName')" />
 QName
                    <br />
                    <xsl:value-of select="function-available('local-name-from-QName')" />
 local-name-from-QName
                    <br />
                    <xsl:value-of select="function-available('namespace-uri-from-QName')" />
 namespace-uri-from-QName
                    <br />
                    <xsl:value-of select="function-available('namespace-uri-for-prefix')" />
 namespace-uri-for-prefix
                    <br />
                    <xsl:value-of select="function-available('in-scope-prefixes')" />
 in-scope-prefixes
                    <br />
                    <xsl:value-of select="function-available('resolve-QName')" />
 resolve-QName
                    <h2>Functions on Nodes</h2>
                    <xsl:value-of select="function-available('name')" />
 name
                    <br />
                    <xsl:value-of select="function-available('local-name')" />
 local-name
                    <br />
                    <xsl:value-of select="function-available('namespace-uri')" />
 namespace-uri
                    <br />
                    <xsl:value-of select="function-available('lang')" />
 lang
                    <br />
                    <xsl:value-of select="function-available('root')" />
 root
                    <h2>Functions on Sequences</h2>
                    <h3>General Functions on Sequences</h3>
                    <xsl:value-of select="function-available('index-of')" />
 index-of
                    <br />
                    <xsl:value-of select="function-available('remove')" />
 remove
                    <br />
                    <xsl:value-of select="function-available('empty')" />
 empty
                    <br />
                    <xsl:value-of select="function-available('exists')" />
 exists
                    <br />
                    <xsl:value-of select="function-available('distinct-values')" />
 distinct-values
                    <br />
                    <xsl:value-of select="function-available('insert-before')" />
 insert-before
                    <br />
                    <xsl:value-of select="function-available('reverse')" />
 reverse
                    <br />
                    <xsl:value-of select="function-available('subsequence')" />
 subsequence
                    <br />
                    <xsl:value-of select="function-available('unordered')" />
 unordered
                    <h3>Functions That Test the Cardinality of Sequences </h3>
                    <xsl:value-of select="function-available('zero-or-one')" />
 zero-or-one
                    <br />
                    <xsl:value-of select="function-available('one-or-more')" />
 one-or-more
                    <br />
                    <xsl:value-of select="function-available('exactly-one')" />
 exactly-one
                    <h3>Equals, Union, Intersection and Except </h3>
                    <xsl:value-of select="function-available('deep-equal')" />
 deep-equal
                    <h3>Aggregate Functions</h3>
                    <xsl:value-of select="function-available('count')" />
 count
                    <br />
                    <xsl:value-of select="function-available('avg')" />
 avg
                    <br />
                    <xsl:value-of select="function-available('max')" />
 max
                    <br />
                    <xsl:value-of select="function-available('min')" />
 min
                    <br />
                    <xsl:value-of select="function-available('sum')" />
 sum
                    <h3>Functions that Generate Sequences</h3>
                    <xsl:value-of select="function-available('id')" />
 id
                    <br />
                    <xsl:value-of select="function-available('idref')" />
 idref
                    <br />
                    <xsl:value-of select="function-available('doc')" />
 doc
                    <br />
                    <xsl:value-of select="function-available('doc-available')" />
 doc-available
                    <br />
                    <xsl:value-of select="function-available('collection')" />
 collection
                    <h2>Context Functions</h2>
                    <xsl:value-of select="function-available('position')" />
 position
                    <br />
                    <xsl:value-of select="function-available('last')" />
 last
                    <br />
                    <xsl:value-of select="function-available('current-dateTime')" />
 current-dateTime
                    <br />
                    <xsl:value-of select="function-available('current-date')" />
 current-date
                    <br />
                    <xsl:value-of select="function-available('current-time')" />
 current-time
                    <br />
                    <xsl:value-of select="function-available('implicit-timezone')" />
 implicit-timezone
                    <br />
                    <xsl:value-of select="function-available('default-collation')" />
 default-collation
                    <br />
                    <xsl:value-of select="function-available('static-base-uri')" />
 static-base-uri
                    <h2>XSLT Functions</h2>
                    <xsl:value-of select="function-available('current')" />
 current
                    <br />
                    <xsl:value-of select="function-available('document')" />
 document
                    <br />
                    <xsl:value-of select="function-available('element-available')" />
 element-available
                    <br />
                    <xsl:value-of select="function-available('format-number')" />
 format-number
                    <br />
                    <xsl:value-of select="function-available('function-available')" />
 function-available
                    <br />
                    <xsl:value-of select="function-available('generate-id')" />
 generate-id
                    <br />
                    <xsl:value-of select="function-available('key')" />
 key
                    <br />
                    <xsl:value-of select="function-available('system-property')" />
 system-property
                    <br />
                    <xsl:value-of select="function-available('unparsed-entity-uri')" />
  unparsed-entity-uri
                    <h2>Common (exsl)</h2>
                    <xsl:value-of select="function-available('exsl:node-set')" />
 exsl:node-set
                    <br/>
                    <xsl:value-of select="function-available('exsl:object-type')" />
 exsl:object-type
                    <h2>Math (math)</h2>
                    <xsl:value-of select="function-available('math:highest')" />
 math:highest
                    <br/>
                    <xsl:value-of select="function-available('math:lowest')" />
 math:lowest
                    <br/>
                    <xsl:value-of select="function-available('math:max')" />
 math:max
                    <br/>
                    <xsl:value-of select="function-available('math:min')" />
 math:min
                    <h2>Regular expressions (regexp)</h2>
                    <xsl:value-of select="function-available('regexp:match')" />
 regexp:match
                    <br/>
                    <xsl:value-of select="function-available('regexp:replace')" />
 regexp:replace
                    <br/>
                    <xsl:value-of select="function-available('regexp:test')" />
 regexp:test
                    <h2>Sets (set)</h2>
                    <xsl:value-of select="function-available('set:difference')" />
 set:difference
                    <br/>
                    <xsl:value-of select="function-available('set:distinct')" />
 set:distinct
                    <br/>
                    <xsl:value-of select="function-available('set:has-same-node')" />
 set:has-same-node
                    <br/>
                    <xsl:value-of select="function-available('set:intersection')" />
 set:intersection
                    <br/>
                    <xsl:value-of select="function-available('set:leading')" />
 set:leading
                    <br/>
                    <xsl:value-of select="function-available('set:trailing')" />
 set:trailing
                    <h2>Strings (str)</h2>
                    <xsl:value-of select="function-available('str:concat')" />
 str:concat
                    <br/>
                    <xsl:value-of select="function-available('str:split')" />
 str:split
                    <br/>
                    <xsl:value-of select="function-available('str:tokenize')" />
 str:tokenize
                </p>
            </body>
        </html>
    </xsl:template>

    <xsl:output method="html" version="5" media-type="text/html"/>

</xsl:stylesheet>