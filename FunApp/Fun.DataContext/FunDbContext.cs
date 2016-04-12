namespace Fun.DataContext
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class FunDbContext : DbContext
    {
        // Your context has been configured to use a 'FunDbContext' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'Fun.DataContext.FunDbContext' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'FunDbContext' 
        // connection string in the application configuration file.
        public FunDbContext()
            : base("FunEntityContainer")
        {
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
        public virtual DbSet<LanguageCulture> LanguageCultures { get; set; }    }

}