/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//recoleccion,vencimiento,cantidad,entrega,observaciones,estado
$(document).ready(function() {
    $('#FormBolsas').validate_popover({
        rules: {
            codigo: {
                digits: true,
                required: true
            },
            grupo_sanguineo: {
                required: true
            },
            rh: {
                required: true
            },
            recoleccion: {
                date: true,
                required: true
            },
            vencimiento: {
                required: true,
                date: true
            },
            cantidad: {
                required: true,
                digits: true
            },
            estado: {
                required: true
            }
        },
        messages: {
            codigo: {
                digits: "Por favor, Ingrese solamente números",
                required: "Campo Obligatorio"
            },
            grupo_sanguineo: {
                required: "Campo Obligatorio"
            },
            rh: {
                required: "Campo Obligatorio"
            },
            recoleccion: {
                required: "Campo Obligatorio",
                date: "Formato de Fecha Incorrecto"
            },
            vencimiento: {
                required: "Campo Obligatorio",
                date: "Formato de Fecha Incorrecto"
            },
            cantidad: {
                digits: "Por favor, Ingrese solamente números",
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
// FUNCION QUE SE ENCARGA DE HABILITAR O DESHABILITAR EL USUARIO
//******************************************************************************
$(document).ready(function() {
    $("#btneliminar").click(function() {
        var estado = $("#estado").val();
        var codigo = $("#codigo").val();
        var cod_jornada = $("#cod_jornada").val();
        if (codigo !== "" && cod_jornada !== "") {
            if (estado === "Activo") {
                $("#estado option[value=Inactivo]").attr("selected", true);
            }
            else {
                $("#estado option[value=Activo]").attr("selected", true);
            }
        }else {
            alert("Busqué primero una bolsa a eliminar");
        }
    });
});


