<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Department</title>
        </head>
        <body>
            <table border="1" bgcolor="ffffcc">
                <tr>
                    <th colspan="6">cours </th> 
                    
                </tr>
                <tr>
                    <td>nom_cours</td>
                    <td>description</td>
                    <td>date</td> 
                    <td>heure</td>
                    <td>duree</td>
                    <td>Salle_cours</td>
                    
                </tr> 
                <xsl:for-each select="department/cours">
                    <tr>
                        <td><xsl:value-of select="nom_cours"/></td>
                        <td><xsl:value-of select="description"/></td>
                        <xsl:for-each select="occupation">
                            <td> <xsl:value-of select="date"/></td>
                            <td> <xsl:value-of select="heure"/> </td>
                            <td><xsl:value-of select="duree"/> </td> 
                        </xsl:for-each>
                        <td><xsl:value-of select="code_salles"/> </td> 
                    </tr>
                </xsl:for-each>
        
            </table>

            <table>
                <tr>
                    <td colspan="2">salle</td>
                </tr>
                <tr>
                    <td colspan="3">salle_Info</td>
                    <td colspan="3">auditoire</td>
                </tr>  
                <tr>
                    <td>code_salle</td>
                    <td>localisation</td>  
                    <td>nbr_ordinateurs</td>

                    <td>code_salle</td>
                    <td>localisation</td>  
                    <td>nbr_places</td>

                </tr>
                <xsl:for-each select="department/salle">   
                    <tr>
                        <xsl:for-each select="department/salle/salleInfo">
                        <td><xsl:value-of select="code_salle"/></td>
                        <td><xsl:value-of select="localisation"/></td>
                        <td><xsl:value-of select="nbr_ordinateurs"/></td>
                        </xsl:for-each>

                        <xsl:for-each select="department/salle/auditoire">
                        <td><xsl:value-of select="code_salle"/></td>
                        <td><xsl:value-of select="localisation"/></td>
                        <td><xsl:value-of select="nbr_places"/></td>
                        </xsl:for-each>

                    </tr>    
                
                </xsl:for-each>


            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>rs