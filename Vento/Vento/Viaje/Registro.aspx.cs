using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vento.Viaje
{
    public partial class Registro : System.Web.UI.Page
    {
        [WebMethod]
        //public static List<string> GetLocations(string hint)
        public static string GetLocations(string hint)
        {
            List<string> result = new List<string>();
            StringBuilder sb = new StringBuilder();
            string sConection = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            int limit = 0;
            using (SqlConnection sqlCon = new SqlConnection(sConection))
            {
                SqlCommand sqlCom = new SqlCommand("select * from locations where location like '%" + hint + "%' order by location asc", sqlCon);
                sqlCon.Open();
                SqlDataReader dr = sqlCom.ExecuteReader();
                while (dr.Read() && (limit++) < 5)
                {
                    //result.Add(dr["location"].ToString());
                    sb.Append("<span>" + dr["location"].ToString() + "</span>");
                }
                sqlCon.Close();
            }
            return sb.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            int edad = 0;
            string labeli = "";
            string label0 = "";
            string label1 = "";
            string label2 = "";
            if (IsPostBack)
            {
                try
                {
                    bool register = true;
                    if (txtNombre.Text == "")
                    {
                        register = false;
                    }
                    if (txtEdad.Text == "")
                    {
                        register = false;
                    }
                    else
                    {
                        try
                        {
                            edad = Convert.ToInt16(txtEdad.Text);
                            if (edad < 18)
                            {
                                register = false;
                            }
                        }
                        catch (Exception)
                        {
                            register = false;
                        }
                    }
                    if (txtResidencia.Text == "")
                    {
                        register = false;
                    }
                    if (!IsValidEmail(txtEmail.Text))
                    {
                        register = false;
                    }
                    if (txtTelefono.Text == "")
                    {
                        register = false;
                    }
                    if (register)
                    {
                        //pruebA DE MANEJO
                        //ver si existía registro
                        int counter_record = 0;
                        string sConection001 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                        using (SqlConnection sqlCon001 = new SqlConnection(sConection001))
                        {
                            SqlCommand sqlCom001 = new SqlCommand("select count(id) as total from drivetest where name='" + txtNombre.Text + "'", sqlCon001);
                            sqlCon001.Open();
                            SqlDataReader reader001 = sqlCom001.ExecuteReader();
                            while (reader001.Read())
                            {
                                counter_record = Convert.ToInt16(reader001[0]);
                            }
                            sqlCon001.Close();
                        }
                        if (counter_record < 1)
                        {
                            int counter_localidad = 0;
                            int id_localidad = 0;
                            #region localidad_residencia
                            string sConection0 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlCon0 = new SqlConnection(sConection0))
                            {
                                SqlCommand sqlCom0 = new SqlCommand("select count(locations.location) as total from locations where locations.location='" + txtResidencia.Text + "'", sqlCon0);
                                sqlCon0.Open();
                                SqlDataReader reader0 = sqlCom0.ExecuteReader();
                                while (reader0.Read())
                                {
                                    counter_localidad = Convert.ToInt16(reader0[0]);
                                }
                                sqlCon0.Close();
                            }
                            if (counter_localidad < 1)
                            {
                                string sConection1 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                                using (SqlConnection sqlCon = new SqlConnection(sConection1))
                                {
                                    SqlCommand sqlCom = new SqlCommand("INSERT INTO locations(location) OUTPUT inserted.id VALUES ('" + txtResidencia.Text + "')", sqlCon);
                                    sqlCon.Open();
                                    SqlDataReader reader = sqlCom.ExecuteReader();
                                    while (reader.Read())
                                    {
                                        id_localidad = Convert.ToInt32(reader[0]);
                                    }
                                    sqlCon.Close();
                                }
                            }
                            else
                            {
                                string sConection2 = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                                using (SqlConnection sqlCon1 = new SqlConnection(sConection2))
                                {
                                    SqlCommand sqlCom1 = new SqlCommand("select locations.id from locations where location ='" + txtResidencia.Text + "'", sqlCon1);
                                    sqlCon1.Open();
                                    SqlDataReader reader1 = sqlCom1.ExecuteReader();
                                    while (reader1.Read())
                                    {
                                        id_localidad = Convert.ToInt32(reader1[0]);
                                    }
                                    sqlCon1.Close();
                                }
                            }
                            #endregion
                            #region registro_real
                            string sConectionu = WebConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                            using (SqlConnection sqlConu = new SqlConnection(sConectionu))
                            {
                                SqlCommand sqlComu = new SqlCommand("insert into drivetest(name,age,residence,email,phone) values ('" + txtNombre.Text + "','" + edad.ToString() + "','" + txtResidencia.Text + "','" + txtEmail.Text + "','" + txtTelefono.Text + "')", sqlConu);
                                sqlConu.Open();
                                SqlDataReader readeru = sqlComu.ExecuteReader();
                                while (readeru.Read())
                                {

                                }
                                sqlConu.Close();
                            }
                            #endregion
                            labeli = "<div class='icon'><img src='Images/assets/Messages/alerta_paloma.png' /></div>";
                            label0 = "";
                            label1 = "Tu solicitud ha sido enviada con éxito.";
                            label2 = "¡Espera la respuesta!";
                        }
                        else
                        {
                            labeli = "<div class='icon'><img src='Images/assets/Messages/alerta_paloma.png' /></div>";
                            label0 = "REVISA TUS DATOS";
                            label1 = "";
                            label2 = "Faltan campos por llenar.";
                        }
                    }
                    else
                    {
                        labeli = "<div class='icon'><img src='Images/assets/Messages/alerta_paloma.png' /></div>";
                        label0 = "REVISA TUS DATOS";
                        label1 = "";
                        label2 = "Faltan campos por llenar.";
                    }
                    lbl_image.Text = labeli;
                    lblMsg_0.Text = label0;
                    lblMsg_1.Text = label1;
                    lblMsg_2.Text = label2;
                }
                catch (Exception)
                {
                    labeli = "";
                    label0 = "LO SENTIMOS";
                    label1 = "Ocurrió un error durante tu solicitud.";
                    label2 = "Por favor, intenta de nuevo.";
                }
                lbl_image.Text = labeli;
                lblMsg_0.Text = label0;
                lblMsg_1.Text = label1;
                lblMsg_2.Text = label2;
            }
        }
        protected void btnNext1_Click(object sender, EventArgs e)
        {
        }
        #region datepicker
        /*void DatePicker1_DateChanged(object sender, EventArgs e)
        {

        }
        */
        #endregion
        #region Validación_mail
        bool invalid = false;
        public bool IsValidEmail(string strIn)
        {
            invalid = false;
            if (String.IsNullOrEmpty(strIn))
                return false;

            // Use IdnMapping class to convert Unicode domain names. 
            try
            {
                strIn = Regex.Replace(strIn, @"(@)(.+)$", this.DomainMapper, RegexOptions.None);
            }
            catch (Exception)
            {
                return false;
            }

            if (invalid)
                return false;

            // Return true if strIn is in valid e-mail format. 
            try
            {
                return Regex.IsMatch(strIn, @"^(?("")(""[^""]+?""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" + @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-\w]*[0-9a-z]*\.)+[a-z0-9]{2,17}))$", RegexOptions.IgnoreCase);
            }
            catch (Exception)
            {
                return false;
            }
        }

        private string DomainMapper(Match match)
        {
            // IdnMapping class with default property values.
            IdnMapping idn = new IdnMapping();

            string domainName = match.Groups[2].Value;
            try
            {
                domainName = idn.GetAscii(domainName);
            }
            catch (ArgumentException)
            {
                invalid = true;
            }
            return match.Groups[1].Value + domainName;
        }
        #endregion
    }
}