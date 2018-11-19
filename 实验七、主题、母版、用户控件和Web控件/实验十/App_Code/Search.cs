using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data.Linq.SqlClient;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]

[System.Web.Script.Services.ScriptService]
public class Search : System.Web.Services.WebService
{

  public Search()
  {

    
  }

  [WebMethod]
  public string[] GetStrings(string prefixText, int count)
  {
    MyPetShopDataContext db = new MyPetShopDataContext();
    
    var products = from p in db.Product
                   where SqlMethods.Like(p.Name, "%" + prefixText.Trim() + "%")
                   select p;

    List<String> list = new List<String>(count);
    foreach (var product in products)
    {
      list.Add(product.Name);
    }
    return list.ToArray();
  }
}

