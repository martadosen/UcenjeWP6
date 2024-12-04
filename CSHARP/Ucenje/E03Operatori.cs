using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ucenje
{
    internal class E03Operatori
    {
        public static void Izvedi()
        {

            //Console.WriteLine("E03");

            //operatori za rad  varijablama

            // = je dodjeljivanje vrijednosti

            // == provjera jednakosti --> bool

            int i = 7; //sada zamislimo da je korisnik unio 7

            Console.WriteLine(i == 7);

            int k = 2, l = 1;

            Console.WriteLine(l / k); // djeljenje dva int daje int

            //mehanizam cast  -> interpretacija broja u drugom tipu podatka

            Console.WriteLine(l / (float)k);

            // != nije jednako 

            Console.WriteLine(i != k);

            //operator modulo %

            Console.WriteLine("5%2={0}", 5 % 2);

            Console.WriteLine("4%2={0}", 4 % 2);

            // automatsko formatiranje CTRL + K + D

            // uvećavanje za 1

            int b = 0;

            // uvećaj za 1

            b = b + 1;

            // kraće

            b += 1;

            //najkraće

            b++;

            // gornja tri primjera vrijede i za -


            Console.WriteLine(b);


            //increment i decrement(i++ i i--)

            b = 0;

            Console.WriteLine(b++);

            Console.WriteLine(++b);

            int t= 0, c = 1;
            t = c++ + t;
            c += ++t;
            Console.WriteLine(c + t);




        }



    }
}
