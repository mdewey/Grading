using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Management.Automation;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            using (PowerShell shell = PowerShell.Create())
            {
                shell.AddCommand("Write-Host 'Hello World'");
                shell.Invoke();
            }
        }
    }
}
