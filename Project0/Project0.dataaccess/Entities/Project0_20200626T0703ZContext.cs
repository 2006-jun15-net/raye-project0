using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace Project0.DataAccess.Entities
{
    public partial class Project0_20200626T0703ZContext : DbContext
    {
        public Project0_20200626T0703ZContext()
        {
        }

        public Project0_20200626T0703ZContext(DbContextOptions<Project0_20200626T0703ZContext> options)
            : base(options)
        {
        }

        public virtual DbSet<CustomerFeedback> CustomerFeedback { get; set; }
        public virtual DbSet<Customers> Customers { get; set; }
        public virtual DbSet<EmployeeDetails> EmployeeDetails { get; set; }
        public virtual DbSet<Employees> Employees { get; set; }
        public virtual DbSet<ItemList> ItemList { get; set; }
        public virtual DbSet<OrderInvoice> OrderInvoice { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Stores> Stores { get; set; }
        public virtual DbSet<VendorList> VendorList { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CustomerFeedback>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("CustomerFeedback", "Customer");

                entity.Property(e => e.CustomerFeedback1)
                    .HasColumnName("CustomerFeedback")
                    .HasMaxLength(500);

                entity.HasOne(d => d.CustomerIndexNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.CustomerIndex)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("CustomerIndex_to_Customer_FK");

                entity.HasOne(d => d.StoreReviewedNavigation)
                    .WithMany()
                    .HasForeignKey(d => d.StoreReviewed)
                    .OnDelete(DeleteBehavior.SetNull)
                    .HasConstraintName("StoreReviewed_to_Store_FK");
            });

            modelBuilder.Entity<Customers>(entity =>
            {
                entity.HasKey(e => e.CustomerIndex)
                    .HasName("PK__Customer__E13BA8A5C92709EE");

                entity.ToTable("Customers", "Customer");

                entity.HasIndex(e => e.Email)
                    .HasName("UQ__Customer__A9D10534C5426A87")
                    .IsUnique();

                entity.Property(e => e.City).HasMaxLength(100);

                entity.Property(e => e.Email).HasMaxLength(100);

                entity.Property(e => e.FirstName).HasMaxLength(100);

                entity.Property(e => e.LastName).HasMaxLength(100);

                entity.Property(e => e.Phone).HasMaxLength(20);

                entity.Property(e => e.State).HasMaxLength(50);

                entity.Property(e => e.StreetAddress).HasMaxLength(150);

                entity.HasOne(d => d.PreferredStoreNavigation)
                    .WithMany(p => p.Customers)
                    .HasForeignKey(d => d.PreferredStore)
                    .HasConstraintName("Customer_to_Store_FK");
            });

            modelBuilder.Entity<EmployeeDetails>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("EmployeeDetails", "Corporate");

                entity.HasIndex(e => e.EmployeeEmail)
                    .HasName("UQ__Employee__6E8498AAE46F7D11")
                    .IsUnique();

                entity.HasIndex(e => e.EmployeeId)
                    .HasName("UQ__Employee__7AD04F10E2FEFAA5")
                    .IsUnique();

                entity.Property(e => e.EmployeeCity).HasMaxLength(100);

                entity.Property(e => e.EmployeeEmail).HasMaxLength(100);

                entity.Property(e => e.EmployeePhone).HasMaxLength(20);

                entity.Property(e => e.EmployeeSalary).HasColumnType("smallmoney");

                entity.Property(e => e.EmployeeStAddress).HasMaxLength(150);

                entity.Property(e => e.EmployeeState).HasMaxLength(50);

                entity.HasOne(d => d.Employee)
                    .WithOne()
                    .HasForeignKey<EmployeeDetails>(d => d.EmployeeId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("EmployeeDetails_to_Employee_FK");
            });

            modelBuilder.Entity<Employees>(entity =>
            {
                entity.HasKey(e => e.EmployeeId)
                    .HasName("PK__Employee__7AD04F111EAA3867");

                entity.ToTable("Employees", "Corporate");

                entity.Property(e => e.FirstName).HasMaxLength(100);

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.IsManager).HasColumnName("isManager");

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.MiddleInit).HasMaxLength(1);

                entity.Property(e => e.Title).HasMaxLength(50);

                entity.HasOne(d => d.SupervisorNavigation)
                    .WithMany(p => p.InverseSupervisorNavigation)
                    .HasForeignKey(d => d.Supervisor)
                    .HasConstraintName("Employee_to_Supervisor_FK");
            });

            modelBuilder.Entity<ItemList>(entity =>
            {
                entity.HasKey(e => e.ItemIndex)
                    .HasName("PK__ItemList__E592800B7B90F5B9");

                entity.ToTable("ItemList", "Corporate");

                entity.Property(e => e.ItemDescription).HasMaxLength(255);

                entity.Property(e => e.ItemName)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.ItemPrice).HasColumnType("smallmoney");

                entity.Property(e => e.ItemVendor)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.HasOne(d => d.ItemVendorNavigation)
                    .WithMany(p => p.ItemList)
                    .HasPrincipalKey(p => p.VendorName)
                    .HasForeignKey(d => d.ItemVendor)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("VendorName_FK");
            });

            modelBuilder.Entity<OrderInvoice>(entity =>
            {
                entity.HasKey(e => e.InvoiceLineNumber)
                    .HasName("PK__OrderInv__93DD967F1FD21862");

                entity.ToTable("OrderInvoice", "Corporate");

                entity.HasOne(d => d.Item)
                    .WithMany(p => p.OrderInvoice)
                    .HasForeignKey(d => d.ItemId)
                    .HasConstraintName("ItemId_to_ItemIndex");

                entity.HasOne(d => d.OrderIndexNavigation)
                    .WithMany(p => p.OrderInvoice)
                    .HasForeignKey(d => d.OrderIndex)
                    .HasConstraintName("OrderIndex_to_OrderIndex_FK");
            });

            modelBuilder.Entity<Orders>(entity =>
            {
                entity.HasKey(e => e.OrderIndex)
                    .HasName("PK__Orders__4956F17F4B4AEB53");

                entity.ToTable("Orders", "Corporate");

                entity.Property(e => e.OrderDateTime)
                    .HasColumnType("smalldatetime")
                    .HasDefaultValueSql("(getutcdate())");

                entity.Property(e => e.OrderId)
                    .HasMaxLength(17)
                    .HasDefaultValueSql("(CONVERT([char](16),newid()))");

                entity.Property(e => e.OrderStatus).HasDefaultValueSql("((4))");

                entity.Property(e => e.OrderStatusDate)
                    .HasColumnType("smalldatetime")
                    .HasDefaultValueSql("(getutcdate())");
            });

            modelBuilder.Entity<Stores>(entity =>
            {
                entity.HasKey(e => e.StoreId)
                    .HasName("PK__Stores__3B82F101218A36BC");

                entity.ToTable("Stores", "Corporate");

                entity.Property(e => e.StoreId).ValueGeneratedNever();

                entity.Property(e => e.StoreCity).HasMaxLength(100);

                entity.Property(e => e.StoreStAddress).HasMaxLength(150);

                entity.Property(e => e.StoreState).HasMaxLength(50);

                entity.HasOne(d => d.StoreManagerNavigation)
                    .WithMany(p => p.Stores)
                    .HasForeignKey(d => d.StoreManager)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("Store_to_Manager_FK");
            });

            modelBuilder.Entity<VendorList>(entity =>
            {
                entity.HasKey(e => e.VendorIndex)
                    .HasName("PK__VendorLi__A62AB120501705AB");

                entity.ToTable("VendorList", "Corporate");

                entity.HasIndex(e => e.VendorEmail)
                    .HasName("UQ__VendorLi__F0E72A77CAAF4E68")
                    .IsUnique();

                entity.HasIndex(e => e.VendorName)
                    .HasName("UQ__VendorLi__7320A357BA4AA607")
                    .IsUnique();

                entity.Property(e => e.VendorCity).HasMaxLength(100);

                entity.Property(e => e.VendorCountry)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.VendorEmail).HasMaxLength(100);

                entity.Property(e => e.VendorName)
                    .IsRequired()
                    .HasMaxLength(100);

                entity.Property(e => e.VendorPhone).HasMaxLength(20);

                entity.Property(e => e.VendorStAddress).HasMaxLength(150);

                entity.Property(e => e.VendorState).HasMaxLength(50);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
