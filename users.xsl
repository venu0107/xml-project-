<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <title>User Information</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 80%;
                        margin: 20px auto;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: center;
                    }
                    th {
                        background-color: lightblue;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>

            <body>
                <h2 style="text-align:center;">User Information Table</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Role</th>
                        <th>Department</th>
                        <th>Email</th>
                    </tr>

                    <xsl:for-each select="users/user">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="role"/></td>
                            <td><xsl:value-of select="department"/></td>
                            <td><xsl:value-of select="email"/></td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>