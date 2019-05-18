
var nodemailer = require('nodemailer');

var $usuario = process.env.USEREMAIL;
var $senha = process.env.SENHAEMAIL;  

const transporter = nodemailer.createTransport({
  host: process.env.HOSTEMAIL,
  port: process.env.PORTEMAIL,
  secure: true, // true for 465, false for other ports
  auth: {
      user: $usuario,
      pass: $senha
    },
    tls: { rejectUnauthorized: true } 
});

// TESTE(Johnny Vaz): correcao
var $destinatario = 'johnnyjohnnyjohnnyvaz@gmail.com';
  
var mailOptions = {
    from: $usuario,
    to: $destinatario,
    subject: 'Enviando um email pelo Node.js',
    text: 'Muito fácil enviar um email pelo node, tente você também!'
};

transporter.sendMail(mailOptions, function(error, info){
    if (error) {
        console.log(error);
    } else {
        console.log('Email enviado: ' + info.response);
    }
});