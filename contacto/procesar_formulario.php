<?php
if (isset($_GET['submit'])) {
    // Destinatario
    $to = 'themariogr@gmail.com';
    
    // Asunto
    $subject = 'Formulario de contacto';
    
    // Mensaje
    $message = 'Nombre: ' . $_GET['name'] . "\r\n";
    $message .= 'Sexo: ' . $_GET['sexo'] . "\r\n";
    $message .= 'País: ' . $_GET['pais'] . "\r\n";
    
    // Encabezados
    $headers = 'From: formulario@ejemplo.com' . "\r\n" .
        'Reply-To: formulario@ejemplo.com' . "\r\n" .
        'X-Mailer: PHP/' . phpversion();
    
    // Enviar correo electrónico
    if (mail($to, $subject, $message, $headers)) {
        echo '¡Mensaje enviado con éxito!';
    } else {
        echo '¡Error al enviar el mensaje!';
    }
}
?>
