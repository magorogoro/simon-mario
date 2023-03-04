<?php
if (isset($_GET['name']) && isset($_GET['email'])) {
    $name = $_GET['name'];
    $email = $_GET['email'];
    $mensaje = "name: " . $name . "\nCorreo electrónico: " . $email;
    $asunto = "Formulario de contacto";
    $destinatario = "themariogr@gmail.com";
    $headers = "From: " . $email;
    if (mail($destinatario, $asunto, $mensaje, $headers)) {
        echo "email enviado correctamente";
    } else {
        echo "Error al enviar el email";
    }
} else {
    echo "Debes completar todos los campos del formulario";
}
?>
