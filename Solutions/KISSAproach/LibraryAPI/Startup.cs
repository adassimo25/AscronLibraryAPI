using LibraryAPI.DataAccess;
using LibraryAPI.DataAccess.Repositories;
using LibraryAPI.Services;
using LibraryAPI.Services.Interfaces;
using LibraryAPI.StartupTasks.Extensions;
using LibraryAPI.Validators.Common;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using System.Text.Json.Serialization;

namespace LibraryAPI
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<LibraryDbContext>(options =>
                options.UseSqlServer(Config.Services.Database.ConnectionString(Configuration)));

            services.RegisterGenericTypes(
                typeof(IRepository<,>),
                typeof(IRequestValidator<>));

            services.RegisterMarkerTypes(typeof(IService));

            services.AddSingleton(AutoMapperService.Initialize());
            services.AddScoped(typeof(IExternalAPIService<>), typeof(ExternalAPIService<>));

            services.AddStartupTask<AddMigrationsStartupTask>();

            services.AddCors();

            services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("v1", new OpenApiInfo
                {
                    Title = "LibraryAPI",
                    Version = "v1",
                    Description = "Web API for Library",
                });
            });

            services
                .AddControllers()
                .AddJsonOptions(options => options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter()));
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c =>
                {
                    c.SwaggerEndpoint("/swagger/v1/swagger.json", "Library v1");
                    c.RoutePrefix = string.Empty;
                });
            }

            app.UseCors(builder =>
                builder.AllowAnyOrigin()
                    .AllowAnyMethod()
                    .AllowAnyHeader()
            );

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}