using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace 获取节假日信息
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            String httpUrl = "http://apis.baidu.com/xiaogg/holiday/holiday";

            String httpArg = "d=20151001";

            String jsonResult = getHolidays(httpUrl, httpArg);

            static String apikey = "apikey";
        }
        public static String getHolidays(String httpUrl, String httpArg)
        {

            BufferedReader reader = null;

            String result = null;

            StringBuffer sbf = new StringBuffer();

            httpUrl = httpUrl + "?" + httpArg;



            try
            {

                Url url = new URL(httpUrl);

                HttpURLConnection connection = (HttpURLConnection)url

                        .openConnection();

                connection.setRequestMethod("GET");



                connection.setRequestProperty("apikey", apikey);

                connection.connect();

                InputStream is = connection.getInputStream();

                reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));

                String strRead = null;

                while ((strRead = reader.readLine()) != null)
                {

                    sbf.append(strRead);

                    sbf.append("\r\n");

                }

                reader.close();

                result = sbf.toString();

            }
            catch (Exception e)
            {

                e.printStackTrace();

            }

            return result;

        }
    }
}
