<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/class">
    <html>
        <head>
            <title>XSL FILE</title>
        </head>
        <style>
            marquee{
                text-align:center;
                background-color:crimson;
                letter-spacing:5px;
                color:yellow;
                text-shadow:2px 2px purple;
                font-size:34px;
            }
            table{
                margin-left:400px;
                border:2px solid red;
                box-shadow:3px 3px 4px 4px yellow;
                margin-top:40px;
                text-align:center;
                border-radius:10px;
            }
            body{
                background-color:black;
                color:white;
            }
        </style>
        <body>
            <marquee behavior="" direction="">STUDENTS'S DATA</marquee>

            <table border="2" cellspacing="15px" cellpadding="15px">
                <tr>
                    <th colspan="5">STUDENT RECORD</th>
                </tr>
                <tr>
                    <th>NAME</th>
                    <th>GRADE</th>
                    <th>AGE</th>
                    <th>CITY</th>
                    <th>SECTION</th>
                </tr>
                
                <xsl:for-each select="student">
                    <tr>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="grade"></xsl:value-of></td>
                        <td><xsl:value-of select="age"></xsl:value-of></td>
                        <td><xsl:value-of select="city"></xsl:value-of></td>
                        <td><xsl:value-of select="section"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>