<% IF Request.Form = "" THEN %>

<HTML>
<HEAD><TITLE>Active Server Pages</TITLE>
<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #000080;
}
-->
</style>
</HEAD>
<BODY BGCOLOR=FFFFFF>

<CENTER>
<FORM METHOD=Post ACTION=Ejemplo5a.asp>
	<H4 align="center" class="style1">ASEGURADO EN POLIZA VIGENTE,CUMPLE CON TODOS LOS REQUISITOS, GARANTICE SERVICIO, CODIGO DE APROBACION AZ24X73W</H4>
</FORM>

</BODY>
</HTML>

<% ELSE

	IF (Request.Form ("Usuario") = "Luis" AND Request.Form ("Clave") = "31416") _
	OR (Request.Form ("Usuario") = "Ale" AND Request.Form ("Clave") = "Luckan") THEN
		Session ("Autentificado") = True
		Response.Cookies ("Usuario") = Request.Form ("Usuario")
		Response.Redirect "Ejemplo5b.asp"
	ELSE
		Response.Redirect "Ejemplo5a.asp"
	END IF

END IF %>
