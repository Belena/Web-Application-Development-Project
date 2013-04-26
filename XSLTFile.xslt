<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <HTML>
            <BODY>
                <h2>Viewing Stock.xml:</h2>
                <div style="width:100%; float:left;height:550px; overflow:auto; font-size: 16px;">
                <TABLE cellspacing="3" cellpadding="8" width="100%" border-color="#636363">
                    <TR bgcolor="">
                        <TD class="heading">
                            <B>Product Name</B>
                        </TD>
                        <TD class="heading">
                            <B>Category</B>
                        </TD>
                        <TD class="heading">
                            <B>Supplier</B>
                        </TD>
                        <TD class="heading">
                            <B>Units in Stock</B>
                        </TD>
                        <TD class="heading">
                            <B>Pricte per unit</B>
                        </TD>
                    </TR>
                    <xsl:for-each select="NewDataSet/Products">
                        <TR bgcolor="#DDDDDD">
                            <TD width="20%" valign="top">
                                <xsl:value-of select="ProductName"/>
                            </TD>
                            <TD width="20%" valign="top">
                                <xsl:value-of select="CategoryID"/>
                            </TD>
                            <TD width="20%" valign="top">
                                <B>
                                    <xsl:value-of select="SupplierId"/>
                                </B>
                            </TD>
                            <TD width="20%" valign="top">
                                <B>
                                    <xsl:value-of select="UnitsInStock"/>
                                </B>
                            </TD>
                            <TD width="20%" valign="top">
                                <B>
                                    <xsl:value-of select="UnitPrice"/>
                                </B>
                            </TD>
                        </TR>
                    </xsl:for-each>
                </TABLE>
                    </div>
            </BODY>
        </HTML>
    </xsl:template>
</xsl:stylesheet>