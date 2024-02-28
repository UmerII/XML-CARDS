<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="Aptech">

<html>
<head>
    <style>
        
.parent-div{
    width: 100%;
    height: 600px;
    background-color: cornflowerblue;
    display: flex;
    justify-content: center;
    align-items: center;
    color:white;
}

img{
    width: 200px;
    height: 200px;
} 
    </style>
</head>
    <body>
<h2>MY FLOWER COLLECTION</h2>

<div class="parent-div">
    <xsl:for-each select="p">
        <div>
            <div>
                <img src="{image}"/>
            </div>
        </div>
        <div class="content">
            <image><xsl:value-of select="image"></xsl:value-of></image>
            <p><xsl:value-of select="p"></xsl:value-of></p>
            <price><xsl:value-of select="price"></xsl:value-of></price>
        </div>
    </xsl:for-each>
</div>
</body>
</html>


</xsl:template>
</xsl:stylesheet>