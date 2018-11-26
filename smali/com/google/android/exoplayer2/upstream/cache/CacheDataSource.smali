.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field public static final CACHE_IGNORED_REASON_ERROR:I = 0x0

.field public static final CACHE_IGNORED_REASON_UNSET_LENGTH:I = 0x1

.field private static final CACHE_NOT_IGNORED:I = -0x1

.field public static final DEFAULT_MAX_CACHE_FILE_SIZE:J = 0x200000L

.field public static final FLAG_BLOCK_ON_CACHE:I = 0x1

.field public static final FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS:I = 0x4

.field public static final FLAG_IGNORE_CACHE_ON_ERROR:I = 0x2

.field private static final MIN_READ_BEFORE_CHECKING_CACHE:J = 0x19000L


# instance fields
.field private actualUri:Landroid/net/Uri;

.field private final blockOnCache:Z

.field private bytesRemaining:J

.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private checkCachePosition:J

.field private currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private currentDataSpecLengthUnset:Z

.field private currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

.field private currentRequestIgnoresCache:Z

.field private final eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private flags:I

.field private final ignoreCacheForUnsetLengthRequests:Z

.field private final ignoreCacheOnError:Z

.field private key:Ljava/lang/String;

.field private readPosition:J

.field private seenCacheError:Z

.field private totalCachedBytesRead:J

.field private final upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;I)V
    .locals 6

    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;IJ)V
    .locals 8

    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    invoke-direct {v4, p1, p4, p5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;ILcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 4
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez p4, :cond_3

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :goto_3
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/TeeDataSource;

    invoke-direct {v0, p2, p4}, Lcom/google/android/exoplayer2/upstream/TeeDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/DataSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_3
.end method

.method private closeCurrentSource()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    if-nez v1, :cond_2

    :goto_1
    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto :goto_1
.end method

.method private static getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->getRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method private handleBeforeThrow(Ljava/io/IOException;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private isBypassingCache()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCausedByPositionOutOfRange(Ljava/io/IOException;)Z
    .locals 3

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_0

    return v2

    :cond_0
    instance-of v0, v1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0
.end method

.method private isReadingFromCache()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReadingFromUpstream()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWritingToCache()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyBytesRead()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getCacheSpace()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCachedBytesRead(JJ)V

    iput-wide v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private notifyCacheIgnored(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->eventListener:Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$EventListener;->onCacheIgnored(I)V

    goto :goto_0
.end method

.method private openNextSource(Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->blockOnCache:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWriteNonBlocking(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_6

    iget-boolean v0, v10, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isCached:Z

    if-nez v0, :cond_7

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isOpenEnded()Z

    move-result v0

    if-nez v0, :cond_9

    iget-wide v4, v10, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v2, v10}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    const/4 v2, 0x0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-eqz v3, :cond_b

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    :goto_3
    iput-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    if-nez p1, :cond_c

    :goto_4
    if-nez v2, :cond_f

    :cond_2
    :goto_5
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-nez v3, :cond_11

    :cond_3
    :goto_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromUpstream()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-nez v0, :cond_15

    :goto_9
    return-void

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->startReadWrite(Ljava/lang/String;J)Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_6
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object v1, v0

    move-object v2, v10

    move-object v0, v8

    goto :goto_2

    :cond_7
    iget-object v0, v10, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, v10, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    sub-long v4, v2, v4

    iget-wide v2, v10, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long v6, v2, v4

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheReadDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v2, v10

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_9
    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cacheWriteDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    move-object v2, v10

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-ne v0, v3, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    const-wide/32 v6, 0x19000

    add-long/2addr v4, v6

    goto/16 :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isBypassingCache()Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->upstreamDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eq v0, v3, :cond_d

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v1

    if-nez v1, :cond_e

    :goto_a
    throw v0

    :cond_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->releaseHoleSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->isHoleSpan()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentHoleSpan:Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_11
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)V

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_14

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->removeRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    goto/16 :goto_8

    :cond_13
    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataInternal;->setRedirectedUri(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;Landroid/net/Uri;)V

    goto/16 :goto_8

    :cond_15
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)V

    goto/16 :goto_9
.end method

.method private setNoBytesRemainingAndMaybeStoreLength()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isWritingToCache()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->setContentLength(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheOnError:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->ignoreCacheForUnsetLengthRequests:Z

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->seenCacheError:Z

    if-eqz v0, :cond_0

    return v1

    :cond_3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyBytesRead()V

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->getKey(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->uri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->getRedirectedUriOrDefault(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->actualUri:Landroid/net/Uri;

    iget v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->flags:I

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->shouldIgnoreCacheForRequest(Lcom/google/android/exoplayer2/upstream/DataSpec;)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_0

    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v2, :cond_1

    :goto_1
    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentRequestIgnoresCache:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->getContentLength(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->notifyCacheIgnored(I)V

    goto :goto_1

    :cond_2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public read([BII)I
    .locals 12

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_1

    return v6

    :cond_0
    return v1

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->checkCachePosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-nez v3, :cond_9

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_a

    :goto_1
    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->closeCurrentSource()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->openNextSource(Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->read([BII)I

    move-result v0

    return v0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isReadingFromCache()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->readPosition:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    int-to-long v4, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->bytesRemaining:J

    :cond_6
    :goto_3
    return v2

    :cond_7
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->totalCachedBytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->currentDataSpecLengthUnset:Z

    if-nez v1, :cond_b

    :cond_8
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->handleBeforeThrow(Ljava/io/IOException;)V

    throw v0

    :cond_9
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource;->setNoBytesRemainingAndMaybeStoreLength()V

    return v6
.end method
