<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>CD Catalog</title>
            </head>
            <body>
                <table border="1">
                    <h1>ttttttttttttt</h1>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>country</th>
                    </tr>
                    <!--Use XSLT for each to loop through CD elements -->
                    <xsl:for-each select="catalog/cd">
                    <tr>
                        <!--Extract values  for Artist and Title elements -->
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="artist"/></td>
                        <td><xsl:value-of select="country"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>