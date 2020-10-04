using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CRUD
{
    public class Class1
    {
        public static void Main(string[] args)
        {
            int c;
            int[] arr = { 34, 7, 82, 8, 75, 6, 12, 3, 38 };
            for (c = 0; c < arr.Length; c++)
            {
                if (arr[c] > 10)
                {
                    System.Console.WriteLine(arr[c]);
                }
            }
            System.Console.ReadKey();
        }
    }
}