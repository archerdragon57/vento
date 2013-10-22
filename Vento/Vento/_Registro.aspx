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
    <div>
    <p>        
        Me llamo <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox> tengo <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox> años de edad vivo en <asp:TextBox ID="txtResidencia" runat="server"></asp:TextBox>.
        </br>
        Mi contacto es <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> y mi teléfono es <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox> y quisiera 
        <select id="choice" runat="server" name="sel1">
        <option value="Ninguno">Elegir opcion</option>
        <option value="Registro">Participar en la promoción</option>
        <option value="Prueba">Pedir una prueba de manejo</option>
        </select>.
        </br>
        <div id="form_secondary">
        Soy <asp:TextBox ID="txtOcupacion" runat="server"></asp:TextBox> y mi idea para ahorrar combustible es:
        </br>
        <asp:TextBox ID="txtExperiencia" onkeyup="checkLenght();" TextMode="multiline" Columns="50" Rows="8" runat="server"></asp:TextBox>
        </p>
        </div>
        He leído las bases y Acepto <asp:CheckBox class="styled" ID="CheckBox1" runat="server" onclick="changeCheckboxText(this);" />   los términos y condiciones
        <p>
            <input type="submit" value="Submit" id="submit_forma_r" /></p> 
        </p>
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
