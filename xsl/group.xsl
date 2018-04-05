<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Group</title>
  </head>  
  <body>
    <table>
      <tr>
        <th>name</th>
        <th>student number</th>
        <th>email address</th>
        <th>phone number</th>
      </tr>
      <xsl:for-each select="member">
        <tr>
          <td><xsl:value-of select="@name" /></td>
          <td>
            <xsl:choose>
              <xsl:when test="@student-number">
                <xsl:value-of select="@student-number" />
              </xsl:when>
            </xsl:choose>
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="@email-address">
                <xsl:value-of select="@email-address" />
              </xsl:when>
            </xsl:choose>
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="@phone-number">
                <xsl:value-of select="@phone-number" />
              </xsl:when>
            </xsl:choose>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
</html>
  </xsl:template>
</xsl:transform>
