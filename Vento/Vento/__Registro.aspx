<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Vento.Registro" %>
<%@ Register Assembly="SlimeeLibrary" Namespace="SlimeeLibrary" TagPrefix="cc1" %>
<script src="Scripts/jquery-1.7.1.js"></script>
<script src="Scripts/jquery-ui-1.8.20.js"></script>
<script src="Scripts/Own_functions.js"></script>
<script>
    function changeCheckboxText(checkbox) {
        if (checkbox.checked)
            $("#submit_forma_r").attr("disabled",false);
        else
            $("#submit_forma_r").attr("disabled",true);
    }
</script>
    <form id="form1" runat="server" class="form_send_ajax">
    <div class="register">
        <div class="close"><a href="/">
            <div class="btn"></div>
        </a></div>
        <div class="form">
                <h1 class="t2">Registro</h1>
                <p class="t3">Llena la informacion</p>
                <br><br>
                <p class="t4">Me llamo <asp:TextBox ID="txtNombre"  placeholder="Nombre y apellido" runat="server"></asp:TextBox></p>

                <p class="t4">tengo <asp:TextBox ID="txtEdad" placeholder="XX Años" runat="server"></asp:TextBox> de edad y vivo en <asp:TextBox ID="txtResidencia" placeholder="Ciudad, Estado" runat="server"></asp:TextBox></p>

                <p class="t4">Mi correo es <asp:TextBox ID="txtEmail" placeholder="Correo electrónico" runat="server"></asp:TextBox></p>

                <p class="t4">mi teléfono es <asp:TextBox ID="txtTelefono" placeholder="Número y lada" runat="server"></asp:TextBox></p>

                <p class="t4">me gustaría <select id="choice" runat="server" name="sel1">
                    <option value="Ninguno">Elegir opcion</option>
                    <option value="Registro">Participar</option>
                    <option value="Prueba">Una prueba de manejo</option>
                </select></p>

                <div id="form_secondary">
                    <br><br>
                    <p class="t4">Soy <asp:TextBox ID="txtOcupacion" placeholder="Ocupación" runat="server"></asp:TextBox> y quiero</p>
                    <p class="t4">vivir esta experiencia porque:</p>

                    <p class="t4"><asp:TextBox ID="txtExperiencia" placeholder='"Escribe tu idea"' onkeyup="checkLenght();" TextMode="multiline" Columns="50" Rows="1" runat="server"></asp:TextBox></textarea></p>
                </div>
                <br>
               <p class="t6">He leído las bases y Acepto <asp:CheckBox ID="CheckBox1" runat="server" onclick="changeCheckboxText(this);" /><label for="CheckBox1"></label> los términos y condiciones</p>
        </div>
        <div class="send"><input type="submit" value="" class="btn" id="submit_forma_r" /></div>
    </div>
    </form>
    <script>
        function checkLenght() {
            var limit = 0;
            limit = 400 - parseInt($('textarea#txtExperiencia').val().length);
            if (limit < 0)
                limit = 0;
            $('#lblLimit').html(limit);
            $('textarea#txtExperiencia').val($('textarea#txtExperiencia').val().substring(0, 400));
        }
        $(function () {
            //alert(window.selected);
            var opcion_selector = window.selected;//= decodeURIComponent((RegExp('Selected=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]);
            //alert(decodeURIComponent((RegExp('Selected=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]));
            if (opcion_selector == null)
            {
                $("#choice").val('Ninguno');
                $("#form_secondary").css("display", "block");
            }
            if (opcion_selector == 0)
            {
                $("#choice").val('Ninguno');
                $("#form_secondary").css("display", "block");
            }
            if (opcion_selector == 1) {
                $("#choice").val('Registro');
                $("#form_secondary").css("display", "block");
            }
            if (opcion_selector == 2) {
                $("#choice").val('Prueba');
                $("#form_secondary").css("display", "none");
            }
            $("#txtResidencia").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "Registro.aspx/GetLocations",
                        data: "{'hint':'" + document.getElementById('txtResidencia').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
            $("#txtOcupacion").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        url: "Registro.aspx/GetOcupations",
                        data: "{'hint':'" + document.getElementById('txtOcupacion').value + "'}",
                        dataType: "json",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert("Error");
                        }
                    });
                }
            });
        });
        $(".form_send_ajax").submit(function (e) {
            alert("sending");
            display_from_url(e, $(this));
        });
        $("#choice").change(function ()
        {
            if ($(this).val() == "Ninguno" || $(this).val() == "Registro")
            {
                $("#form_secondary").css("display", "block");
            }
            else
            {
                $("#form_secondary").css("display", "none");
            }
        });
        $("#submit_forma_r").attr("disabled", true);
    </script>
