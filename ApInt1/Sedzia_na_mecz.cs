
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
    
public partial class Sedzia_na_mecz
{

    public int ID_OSOBA { get; set; }

    public int ID_MECZ { get; set; }

    public int ID_FUNKCJI { get; set; }



    public virtual Funkcja_sedziowska Funkcja_sedziowska { get; set; }

    public virtual Mecz Mecz { get; set; }

    public virtual Sedzia Sedzia { get; set; }

}

}
