//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Fun.Entities.Designer
{
    using System;
    using System.Collections.Generic;
    
    public partial class ContextTerm
    {
        public ContextTerm()
        {
            this.ContextGrammerExpressions = new HashSet<ContextGrammerExpression>();
        }
    
        public int Id { get; set; }
        public int ContextTermTypeId { get; set; }
        public int TrainingTermId { get; set; }
    
        public virtual ContextTermType ContextTermType { get; set; }
        public virtual ICollection<ContextGrammerExpression> ContextGrammerExpressions { get; set; }
    }
}
