﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class FunEntitiesContainer : DbContext
    {
        public FunEntitiesContainer()
            : base("name=FunEntitiesContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TrainingTermFeature> TrainingTermFeatures { get; set; }
        public virtual DbSet<TrainingTerm> TrainingTerms { get; set; }
        public virtual DbSet<TrainingKnowledgeCategory> TrainingKnowledgeCategories { get; set; }
        public virtual DbSet<TrainingKnowlogeKeyWord> TrainingKnowlogeKeyWords { get; set; }
        public virtual DbSet<ContextGrammer> ContextGrammers { get; set; }
        public virtual DbSet<ContextNonterminater> ContextNonterminaters { get; set; }
        public virtual DbSet<ContextTerminater> ContextTerminaters { get; set; }
        public virtual DbSet<ContextStart> ContextStarts { get; set; }
        public virtual DbSet<KnowledgeContext> KnowledgeContexts { get; set; }
        public virtual DbSet<TrainingKnowledge> TrainingKnowledges { get; set; }
        public virtual DbSet<TrainingTermFetaurePosition> TrainingTermFetaurePositions { get; set; }
        public virtual DbSet<LanguageCulture> LanguageCultures { get; set; }
    }
}