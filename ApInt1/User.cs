//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ApInt1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class User
    {
        public int UserID { get; set; }
        public string FullName { get; set; }
        [Required(ErrorMessage ="Please provide Username", AllowEmptyStrings =false)]
        public string Username { get; set; }
        [Required(ErrorMessage ="Please provide password", AllowEmptyStrings =false)]
        [DataType(System.ComponentModel.DataAnnotations.DataType.Password)]
        public string Password { get; set; }
    }
}
