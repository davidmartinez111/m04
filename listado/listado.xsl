<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
  <html>
    <head>
      <link rel="stylesheet" type="text/css" href="../css/listado.css"/>
      <title>Listado</title>
      <xsl:variable name="contenido_estilo" select="document('../listado/listado.html')/html/head/*"/>
      <xsl:copy-of select="$contenido_estilo"/>
    </head>
    <body>
     <!-- <header>
          <xsl:copy-of select="document('/listado/listado.html')/html/body/header/*"/>
      </header>
      <xsl:copy-of select="document('../listado/listado.html')/html/body/*"/> -->
      <main>
        <div class="recetas-container">
          <xsl:for-each select="recetas/receta">
            <article class="receta">
              <a href="{enlace}">
                <div class="receta-info">
                  <h2><xsl:value-of select="titulo"/></h2>
                  <p><xsl:value-of select="descripcion"/></p>
                  <img src="{img}"/>
                </div>
              </a>
            </article>
          </xsl:for-each>
        </div>
      </main>
    </body>
  </html>
	</xsl:template>
	<xsl:template match="header">
		<header>
			<xsl:copy-of select="."/>
		</header>
	</xsl:template>
</xsl:stylesheet>

