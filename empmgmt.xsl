<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

    <html>
        <body>
            <h1 align="center">Employee Management System</h1>
            
            <br />

            <table border="1" align="center">
                <tr bgcolor="#25d39f">
                    <th>ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Salary</th>
                    <th>Email</th>
                    <th>MobNum</th>
                    <th>Designation</th>
                    <th>Promotion</th>
                </tr> 
                
                <xsl:for-each select="company/employee" >
                    <tr>
                        <td><xsl:value-of select="@empid"/></td>
                        <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="age"/></td>
                            <td><xsl:value-of select="salary"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="phone"/></td>
                            <td><xsl:value-of select="designation"/></td>
                            <td>
                            <xsl:choose>
                                <xsl:when test="age >= 50">
                                    Associate Project Manager
                                </xsl:when>
                                <xsl:when test="age >= 40">
                                    Team Leader
                                </xsl:when>
                                <xsl:otherwise>
                                    Developer
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>

            </table>
            
        </body>
    </html>

</xsl:template>
</xsl:stylesheet>