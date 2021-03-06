using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace LibraryAPI.DataAccess.Repositories
{
    public abstract class AbstractRepository<TEntity, TIdentity> : IRepository<TEntity, TIdentity>
        where TEntity : class
        where TIdentity : notnull
    {
        protected LibraryDbContext DbContext { get; }
        protected DbSet<TEntity> DbSet { get; }

        public AbstractRepository(LibraryDbContext dbContext)
        {
            DbContext = dbContext;
            DbSet = dbContext.Set<TEntity>();
        }

        public void Add(TEntity entity)
        {
            DbSet.Add(entity);
            DbContext.SaveChanges();
        }

        public void AddRange(IEnumerable<TEntity> entities)
        {
            DbSet.AddRange(entities);
            DbContext.SaveChanges();
        }

        public void Remove(TEntity entity)
        {
            DbSet.Remove(entity);
            DbContext.SaveChanges();
        }

        public void RemoveRange(IEnumerable<TEntity> entities)
        {
            DbSet.RemoveRange(entities);
            DbContext.SaveChanges();
        }

        public void Update(TEntity entity)
        {
            DbSet.Update(entity);
            DbContext.SaveChanges();
        }

        public Task AddAsync(TEntity entity, CancellationToken cancellationToken = default)
        {
            Add(entity);
            return DbContext.SaveChangesAsync(cancellationToken);
        }

        public Task AddRangeAsync(IEnumerable<TEntity> entities, CancellationToken cancellationToken = default)
        {
            AddRange(entities);
            return DbContext.SaveChangesAsync(cancellationToken);
        }

        public Task RemoveAsync(TEntity entity, CancellationToken cancellationToken = default)
        {
            Remove(entity);
            return DbContext.SaveChangesAsync(cancellationToken);
        }

        public Task RemoveRangeAsync(IEnumerable<TEntity> entities, CancellationToken cancellationToken = default)
        {
            RemoveRange(entities);
            return DbContext.SaveChangesAsync(cancellationToken);
        }

        public Task UpdateAsync(TEntity entity, CancellationToken cancellationToken = default)
        {
            Update(entity);
            return DbContext.SaveChangesAsync(cancellationToken);
        }

        public abstract Task<TEntity> FindAsync(TIdentity id, CancellationToken cancellationToken = default);
    }

    public interface IRepository<TEntity, TIdentity>
        where TEntity : class
    {
        void Add(TEntity entity);

        void AddRange(IEnumerable<TEntity> entities);

        void Remove(TEntity entity);

        void RemoveRange(IEnumerable<TEntity> entities);

        void Update(TEntity entity);

        Task AddAsync(TEntity entity, CancellationToken cancellationToken = default);

        Task AddRangeAsync(IEnumerable<TEntity> entities, CancellationToken cancellationToken = default);

        Task RemoveAsync(TEntity entity, CancellationToken cancellationToken = default);

        Task RemoveRangeAsync(IEnumerable<TEntity> entity, CancellationToken cancellationToken = default);

        Task UpdateAsync(TEntity entity, CancellationToken cancellationToken = default);

        Task<TEntity> FindAsync(TIdentity id, CancellationToken cancellationToken = default);
    }
}