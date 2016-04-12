namespace Fun.DataContext
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations.Schema;
    
    public partial class TrainingTerm
    {
        [NotMapped]
        public int Length
        {
            get
            {
                return Term.Length;
            }
        }
    }
}
