using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static Boolean PostP1Telegram(P1telegram p1)
    {

        // If succesfully received
        //var thisPage = new Default();
        //thisPage.showResult(p1);

        return true;

    }

    [System.Web.Services.WebMethod]
    public static City GetCity(City city)
    {
        return city;
    }

    public void showResult(P1telegram p1)
    {
        lblresult.Text = "ID: " + p1.ID + " Telegram: " + p1.Telegram;
    }

    public class City
    {
        private string name;
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

        private int population;
        public int Population
        {
            get
            {
                return population;
            }
            set
            {
                population = value;
            }
        }
    }

    public class P1telegram
    {
        private string id;
        public string ID
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        private string telegram;
        public string Telegram
        {
            get
            {
                return telegram;
            }
            set
            {
                telegram = value;
            }
        }
    }
}