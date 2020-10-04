using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

delegate int calculate(int c);

namespace PracticeSession
{
    public abstract class A {

        public abstract void getName();
    } 

    }
    class B:A {
    void getName() {

        Console.WriteLine( "Shihab");
    }

    }
    class C:A {

    void getName()
    {

        Console.WriteLine("Shihab");
    }
}
}
 



    
 
 