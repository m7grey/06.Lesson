<!-- Created with Liquid Studio 2017 - Developer Bundle Edition (Trial) 15.1.12.7658 (https://www.liquid-technologies.com) -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Untitled Document</title>
                <style>
                    .star{
                    width: 15px;
                    height: 15ps;
                    }

                    td{
                    border: solid 1px black;
                    padding: 3px;
                    }
                    .money{
                    text-align: right;
                    color:green;
                    }
                </style>

            </head>
            <body>
                <h1>Employees (Non Managers)</h1>
                <table>
                    <xsl:for-each
                            select="/employees/employee/staff/employee[county ='Manhattan']">

                        <tr>
                            <td>
                                <xsl:value-of select="./name"/>
                            </td>
                            <td>
                                <xsl:value-of select="./county"/>
                            </td>
                            <td class="money">
                                <xsl:value-of select="./jobCategory/salary"/>
                            </td>
                            <td>
                                <img src="star.png" class="star"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>