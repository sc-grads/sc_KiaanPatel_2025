using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskManagementSystem
{
    internal class ReportTask : ITask<string>
    {
        public int MyProperty { get; set; }
        public string ReportName { get; set; }

        public string Perform()
        {
            return $"Report {ReportName} generated successfully";

        }

    }

}
