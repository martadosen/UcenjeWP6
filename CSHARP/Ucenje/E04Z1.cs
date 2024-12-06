using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E04Z1
    { public static void Izvedi()
        {
            //Console.WriteLine("");
            Console.Write("Unesite godine:" );

            int godine = int .Parse( Console.ReadLine() );

            if (godine >= 18)
            {

                Console.WriteLine("Punoljetan");
            }
            else 
            {
                Console.WriteLine("Maloljetan");
            }
        }




    }
}
