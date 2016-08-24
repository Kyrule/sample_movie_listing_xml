<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/"> 
<!--	this xsl template will be used recursively by the xml documents. all will have the consistent look/skin but different content	-->
<html>

<head>
<style type="text/css">
th.hulaRt {text-align: right; white-space:nowrap;table-layout:automatic; vertical-align:top}

div.pict
{
  margin: 2px;
  height: auto;
  width: auto;
  float: left;
  text-align: center;
}	
div.pict img
{
  display: inline;
  margin: 3px;
  border: 1px solid #ffffff;
}
div.pict a:hover img {border: 1px solid #ff00ff;}
div.picName
{
  text-align: center;
  font-size: 70%;
  width: 120px;
  margin: 2px;
}

</style>
<xsl:for-each select="filmFestival">
<title><xsl:value-of select="siteName" /></title>
</xsl:for-each>
</head>

  <body>

	<xsl:for-each select="filmFestival">
	<div align="center"><h4><xsl:value-of select="siteName" /></h4></div><hr size="1" />
<table>
<tr>
	<td>
    <table border="0" width="75%" align="center">
	<xsl:for-each select="movie">	

	<tr bgcolor="#ff99ff">

		<th colspan="2"><xsl:value-of select="title" /></th>

	</tr>

	<tr>
		<xsl:for-each select="prettyPictures">
	<td>
		<div class="pict">

 		<a href="{pic1}"><img src="{pic1}" alt="{pic1}" border="0" /></a>
 		<div class="picName"></div>
		
		</div>
	</td>

	<td>
                <div class="pict">

                <a href="{pic2}"><img src="{pic2}" alt="{pic2}" border="0" /></a>
                <div class="picName"></div>

                </div>
	</td>

		</xsl:for-each>
	</tr>

	<xsl:for-each select="basic_info">
	<tr>
		<th colspan="2"><div align="left">OVERVIEW</div></th>
	</tr>

        <tr>
                <th class="hulaRt">Popularity:</th>
                <td><xsl:value-of select="stars"/> stars</td>
        </tr>

	<tr>
		<th class="hulaRt">Directed by:</th>
		<td><xsl:value-of select="director"/></td>
	</tr>

        <tr>
                <th class="hulaRt">Written by:</th>
                <td><xsl:value-of select="writers"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Release date:</th>
                <td><xsl:value-of select="releaseDate"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Genre:</th>
                <td><xsl:value-of select="genre"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Plot:</th>
                <td><xsl:value-of select="plotBrief"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Commentary:</th>
                <td><xsl:value-of select="commentary"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Keywords:</th>
                <td><xsl:value-of select="assoc_keywords"/></td>
        </tr>
	<!-- <xsl:template match="soundtrack"> -->
	<xsl:choose><!--	make a decision to display or not to display soundtrack		-->
		<xsl:when test="soundtrack='unknown'"> 

		<!--	do nothing if the soundtrack string is 'unknown'	-->

		</xsl:when>

		<xsl:otherwise> <!--	this portion will appear exclusively for movies with soundtrack		-->

	        <tr>
        	        <th class="hulaRt">Sound Track:</th>
        	        <td><xsl:value-of select="soundtrack"/></td>
       		 </tr>
		

		</xsl:otherwise>
	</xsl:choose>

	<!-- </xsl:template>	-->


	</xsl:for-each> <!--	end basic_info	-->
	

	<xsl:for-each select="cast">

        <tr>
                <th colspan="2"><div align="left"><br />CASTS</div></th>
        </tr>

        <tr>
                <th class="hulaRt">Favourites:</th>
                <td><xsl:value-of select="favouritesOnly"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Others:</th>
                <td><xsl:value-of select="theOthers"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Extras:</th>
                <td><xsl:value-of select="extras"/></td>
        </tr>

        </xsl:for-each> <!--	end casts	-->

        <xsl:for-each select="more_info">

	<tr>
		<th colspan="2"><div align="left"><br />MORE INFORMATION</div></th>
	</tr>

        <tr>
                <th class="hulaRt">Location:</th>
                <td><xsl:value-of select="location"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Rating Certification:</th>

		<td><xsl:value-of select="ratingCertification" /></td> 
        </tr>

        <tr>
                <th class="hulaRt">Tagline:</th>
                <td><xsl:value-of select="tagline"/></td>
        </tr>


        <tr>
                <th class="hulaRt">Language:</th>
                <td><xsl:value-of select="lang"/></td>
        </tr>

        <tr>
                <th class="hulaRt">Run time:</th>
                <td><xsl:value-of select="runtime"/></td>
        </tr>



        <tr>
                <th class="hulaRt">Company:</th>
                <td><xsl:value-of select="coy"/></td>
        </tr>

	<tr>
		<th class="hulaRt">Direct Source:</th>
		<td><a href="{info_src}" target="new_win"><xsl:value-of select="info_src" /></a></td>
	</tr>

	<tr>
	<p>
	<br />
	<br />
	</p>
	</tr>

	</xsl:for-each>
	
	</xsl:for-each> <!--	end movie	-->
	</table>

	</td>

</tr>

</table>	

	</xsl:for-each>
	</body>

</html>

</xsl:template>

</xsl:stylesheet>
