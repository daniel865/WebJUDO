/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//******************************************************************************
//  FUNCION PARA VALIDAR LOS CAMPOS DEL FORMULARIO USUARIO DEPENDIENDO DEL ID
//  DEL ELEMENTO A VALIDAR
//******************************************************************************

$(document).ready(function() {
    $('#FormUsuario').validate_popover({
        rules: {
            nro_identificacion: {
                digits: true,
                required: true
            },
            nombre: {
                lettersonly: true,
                required: true
            },
            apellidos: {
                lettersonly: true,
                required: true
            },
            usuario: {
                required: true
            },
            correo: {
                required: true,
                email: true
            },
            pass: {
                required: true
            },
            pass2: {
                equalTo: "#pass"
            },
            perfil: {
                required: true
            },
            estado: {
                required: true
            }
        },
        messages: {
            nro_identificacion: {
                digits: "Números únicamente",
                required: "Campo Obligatorio"
            },
            nombre: {
                lettersonly: "Letras únicamente",
                required: "Campo Obligatorio"
            },
            apellidos: {
                lettersonly: "Letras únicamente",
                required: "Campo Obligatorio"
            },
            usuario: {
                required: "Campo Obligatorio"
            },
            correo: {
                email: "El correo no es válido",
                required: "Campo Obligatorio"
            },
            pass: {
                required: "Campo Obligatorio"
            },
            pass2: {
                required: "Campo Obligatorio",
                equalTo: "Las contraseñas no coinciden"
            },
            perfil: {
                required: "Campo Obligatorio"
            },
            estado: {
                required: "Campo Obligatorio"
            }
        },
        highlight: function(element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            //$(element).closest('.ocultar').removeClass('success').addClass('glyphicon glyphicon-ok form-control-feedback');
        },
        success: function(element) {
            element
                    .text('OK!').addClass('valid')
                    .closest('.form-group').removeClass('has-error').addClass('has-success');
            //.closest('.ocultar').removeClass('glyphicon glyphicon-ok form-control-feedback').addClass('has-success');
        }
    });

}); // end document.ready

//******************************************************************************
// FUNCION PARA DESACTIVAR LOS CAMPOS DEL FORMULARIO CUANDO SE LE DE CLICK
//******************************************************************************
$.fn.desactivarCampos = function() {
    $(document).ready(function() {
        $("#nro_identificacion").prop('disabled', true);
        $("#nombre").prop('disabled', true);
        $("#apellidos").prop('disabled', true);
        $("#usuario").prop('disabled', true);
        $("#correo").prop('disabled', true);
        $("#pass").prop('disabled', true);
        $("#pass2").prop('disabled', true);
        $("#perfil").prop('disabled', true);
        $("#estado").prop('disabled', true);
    });
};



//******************************************************************************
// FUNCION PARA DESACTIVAR LOS CAMPOS DEL FORMULARIO CUANDO SE LE DE CLICK
//******************************************************************************
$.fn.desactivarCampos = function() {
    $(document).ready(function() {
        $("#nro_identificacion").prop('disabled', true);
        $("#nombre").prop('disabled', true);
        $("#apellidos").prop('disabled', true);
        $("#usuario").prop('disabled', true);
        $("#correo").prop('disabled', true);
        $("#pass").prop('disabled', true);
        $("#pass2").prop('disabled', true);
        $("#perfil").prop('disabled', true);
        $("#estado").prop('disabled', true);
    });
};

//******************************************************************************
// FUNCION PARA ACTIVAR LOS CAMPOS DEL FORMULARIO
//******************************************************************************
$.fn.activarCampos = function() {
    $(document).ready(function() {
        $("#nro_identificacion").prop('disabled', false);
        $("#nombre").prop('disabled', false);
        $("#apellidos").prop('disabled', false);
        $("#usuario").prop('disabled', false);
        $("#correo").prop('disabled', false);
        $("#pass").prop('disabled', false);
        $("#pass2").prop('disabled', false);
        $("#perfil").prop('disabled', false);
        $("#estado").prop('disabled', false);
    });
};

//******************************************************************************
// FUNCION PARA LIMPIAR LOS CAMPOS DEL FORMULARIO
//******************************************************************************
function limpiarformulario(formulario) {
    /* Se encarga de leer todas las etiquetas input del formulario*/
    $(formulario).find('input').each(function() {
        switch (this.type) {
            case 'password':
            case 'text':
            case 'hidden':
                $(this).val('');
                break;
            case 'checkbox':
            case 'radio':
                this.checked = false;
        }
    });

    /* Se encarga de leer todas las etiquetas select del formulario */
    $(formulario).find('select').each(function() {
        $("#" + this.id + " option[value=0]").attr("selected", true);
    });
    /* Se encarga de leer todas las etiquetas textarea del formulario */
    $(formulario).find('textarea').each(function() {
        $(this).val('');
    });
}

//******************************************************************************
// FUNCION PARA RESETAR LOS CAMPOS DE UN FORMUALRIO
//******************************************************************************
jQuery.fn.resetear = function() {
    $(this).each(function() {
        this.reset();
    });
};

$(document).ready(function() {
    $("#btnlimpiar").click(function() {
        limpiarformulario("#FormUsuario");
    });
});


//******************************************************************************
// FUNCION BASICAS DEL CRUD. ACTIVAR Y DESCATIVAR CAMPOS SEGUN LOS BOTONES.
// EVENTOS MANEJADOS POR EL ID DEL BOTÓN
//******************************************************************************
/*$(document).ready(function() {
 $(document).desactivarCampos();
 });*/



//******************************************************************************
// FUNCION PARA ACTIVAR LOS BOTONES DE MODIFICAR Y ELIMINAR
//******************************************************************************
$(document).ready(function() {
    $("#btnbuscarb").click(function() {
        $(document).activarCampos();
        $("#usuario").prop('disabled', true);
    });
});

//******************************************************************************
// FUNCION QUE DESHABILITA LOS SUBMIT HASTA QUE SE HAYAN RELLENADO LOS CAMPOS
//******************************************************************************
/*$(document).ready(function() {
 $('input[type="submit"]').attr('disabled', 'disabled');
 $('input[type="text"]').keypress(function() {
 if ($(this).val() != '') {
 $('input[type="submit"]').removeAttr('disabled');
 }
 });
 });*/

//******************************************************************************
// FUNCION QUE SE ENCARGA DE HABILITAR O DESHABILITAR EL USUARIO
//******************************************************************************
$(document).ready(function() {
    $("#btneliminar").click(function() {
        var estado = $("#estado").val();
        var user = $("#usuario").val();
        var iden = $("#nro_identificacion").val();
        if (iden !== "" && user !== "") {
            if (estado === "Activo") {
                $("#estado option[value=Inactivo]").attr("selected", true);
            }
            else {
                $("#estado option[value=Activo]").attr("selected", true);
            }
        }else {
            alert("Busqué primero un usuario a eliminar");
        }



    });
});





// $("#perfil option[value=" +<%=perfil%> + "]").attr("selected", true);      

//$("#estado option[value=" +<%=estado%> + "]").attr("selected", true);










