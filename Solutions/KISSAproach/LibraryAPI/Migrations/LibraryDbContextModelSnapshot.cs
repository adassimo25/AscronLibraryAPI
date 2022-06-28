﻿// <auto-generated />
using System;
using LibraryAPI.DataAccess;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace LibraryAPI.Migrations
{
    [DbContext(typeof(LibraryDbContext))]
    partial class LibraryDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("ProductVersion", "5.0.17")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("AuthorBook", b =>
                {
                    b.Property<Guid>("AuthorsId")
                        .HasColumnType("uniqueidentifier")
                        .HasColumnName("AuthorId");

                    b.Property<Guid>("BooksId")
                        .HasColumnType("uniqueidentifier")
                        .HasColumnName("BookId");

                    b.HasKey("AuthorsId", "BooksId");

                    b.HasIndex("BooksId");

                    b.ToTable("BookAuthor");
                });

            modelBuilder.Entity("LibraryAPI.Domain.Authors.Author", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime?>("DateOfBirth")
                        .HasColumnType("datetime2");

                    b.Property<string>("FirstName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("LastName")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Authors");
                });

            modelBuilder.Entity("LibraryAPI.Domain.Books.Book", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("CurrentStatusId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Genre")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Language")
                        .HasMaxLength(50)
                        .HasColumnType("nvarchar(50)");

                    b.Property<int?>("PageNumber")
                        .HasColumnType("int");

                    b.Property<DateTime?>("PublicationDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Title")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("CurrentStatusId");

                    b.ToTable("Books");
                });

            modelBuilder.Entity("LibraryAPI.Domain.StatusHistories.StatusHistory", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid?>("BookId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<DateTime>("ModifiedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Status")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("BookId");

                    b.ToTable("StatusHistory");
                });

            modelBuilder.Entity("AuthorBook", b =>
                {
                    b.HasOne("LibraryAPI.Domain.Authors.Author", null)
                        .WithMany()
                        .HasForeignKey("AuthorsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("LibraryAPI.Domain.Books.Book", null)
                        .WithMany()
                        .HasForeignKey("BooksId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("LibraryAPI.Domain.Books.Book", b =>
                {
                    b.HasOne("LibraryAPI.Domain.StatusHistories.StatusHistory", "CurrentStatus")
                        .WithMany()
                        .HasForeignKey("CurrentStatusId");

                    b.Navigation("CurrentStatus");
                });

            modelBuilder.Entity("LibraryAPI.Domain.StatusHistories.StatusHistory", b =>
                {
                    b.HasOne("LibraryAPI.Domain.Books.Book", "Book")
                        .WithMany("StatusHistories")
                        .HasForeignKey("BookId");

                    b.Navigation("Book");
                });

            modelBuilder.Entity("LibraryAPI.Domain.Books.Book", b =>
                {
                    b.Navigation("StatusHistories");
                });
#pragma warning restore 612, 618
        }
    }
}
