//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Fun.DataContext
{
    using System;
    using System.Collections.Generic;
    
    public partial class KnowledgeContext
    {
        public int Id { get; set; }
        public int TrainingKnowledgeId { get; set; }
        public string Context { get; set; }
        public int MatchUpPercentage { get; set; }
    
        public virtual TrainingKnowledge TrainingKnowledge { get; set; }
    }
}
