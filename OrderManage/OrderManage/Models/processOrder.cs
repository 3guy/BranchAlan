//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OrderManage.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class processOrder
    {
        public long id { get; set; }
        public Nullable<long> userid { get; set; }
        public Nullable<long> orderid { get; set; }
        public Nullable<long> pdid { get; set; }
        public Nullable<decimal> money { get; set; }
        public Nullable<decimal> price { get; set; }
        public string note { get; set; }
        public Nullable<System.DateTime> time { get; set; }
    }
}