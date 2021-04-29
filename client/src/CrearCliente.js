import React, {useState } from "react";
import {useHistory} from "react-router-dom";
import Axios from "axios";

function CrearCliente() {
    const history = useHistory();

  const [errorStatus, setErrorStatus] = useState('')
  const [usernameReg, setUsernameReg] = useState('')
  const [passwordReg, setPasswordReg] = useState('')
  const [regResponse, setRegResponse] = useState('')
  const [delResponse, setDelResponse] = useState('')
  
const registerClient = () => {
  Axios.post("http://localhost:3001/register_client", {
    username: usernameReg,
    password: passwordReg,
  }).then((response) => {
    console.log(response);
    if (response.data == false)
    {
        if (usernameReg !== '' && passwordReg !== '')
          setRegResponse("El correo electrónico ya se encuentra registrado");
        else if (usernameReg === '' || passwordReg === '')
          setRegResponse("Llene los campos de correo y/o contraseña completamente antes de registrarse");
      }
      else if (response.data === true)
      {
        console.log(response);
        setRegResponse("Cliente registrado exitosamente");
      }
  });
};


function validarEmail() {
  var valor = usernameReg;
  var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
  console.log(valor);
  if (emailRegex.test(valor)){
   //alert("La dirección de email " + valor + " es correcta.");
   console.log("La dirección de email " + valor + " es correcta.");
   registerClient();
  } else {
   //alert("La dirección de email es incorrecta.");
   console.log("La dirección de email " + valor + " es incorrecta.");
   setRegResponse("Por favor ingrese una dirección de correo electrónico válida");
  }
}

    return (
      <div className="CrearCliente">
        <div className="buttons">
        <button onClick={()=> history.push("/menu_admin")}>Regresar al menú de sesión</button>
        <button onClick={validarEmail}>Crear cuenta cliente</button>
        </div>
        {regResponse}

        <h2>Crear cuenta Cliente</h2>

        <label>Correo electrónico: </label> <br />
        <input type = "text" name="username" required
        onChange={(e) => {
          setUsernameReg(e.target.value);
        }}
        /> <br/> <br/>

        <label>Contraseña: </label> <br/>
        <input type = "password" name="password" required
        onChange={(e) => {
          setPasswordReg(e.target.value);
        }}
        /> <br/> <br/> 
           
         <p className = "error">{errorStatus}</p>
      </div>
    );
  }
 
export default CrearCliente;