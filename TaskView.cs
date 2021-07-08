using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ToDolist
{
    public class TaskView
    {
        public int TaskId { get; set; }
        public string TaskName { get; set; }
        public string Description { get; set; }
        public DateTime TaskDate { get; set; }
        public DateTime TaskTime { get; set; }
    }
}