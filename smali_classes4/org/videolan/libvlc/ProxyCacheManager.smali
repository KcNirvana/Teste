.class public Lorg/videolan/libvlc/ProxyCacheManager;
.super Ljava/lang/Object;
.source "ProxyCacheManager.java"

# interfaces
.implements Lorg/videolan/libvlc/ICacheManager;
.implements Lcom/danikula/videocache/CacheListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static proxyCacheManager:Lorg/videolan/libvlc/ProxyCacheManager;


# instance fields
.field private cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

.field private mFullCached:Z

.field private mSupportCache:Z

.field private proxy:Lcom/danikula/videocache/HttpProxyCacheServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videocache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/videolan/libvlc/ProxyCacheManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/videolan/libvlc/ProxyCacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/ProxyCacheManager;->newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    :goto_0
    return-object p1
.end method

.method public static declared-synchronized instance()Lorg/videolan/libvlc/ProxyCacheManager;
    .locals 2

    const-class v0, Lorg/videolan/libvlc/ProxyCacheManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/videolan/libvlc/ProxyCacheManager;->proxyCacheManager:Lorg/videolan/libvlc/ProxyCacheManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/videolan/libvlc/ProxyCacheManager;

    invoke-direct {v1}, Lorg/videolan/libvlc/ProxyCacheManager;-><init>()V

    sput-object v1, Lorg/videolan/libvlc/ProxyCacheManager;->proxyCacheManager:Lorg/videolan/libvlc/ProxyCacheManager;

    :cond_0
    sget-object v1, Lorg/videolan/libvlc/ProxyCacheManager;->proxyCacheManager:Lorg/videolan/libvlc/ProxyCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private newProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;
    .locals 2

    new-instance v0, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/videolan/libvlc/util/CacheUtils;->getVideoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->cacheDirectory(Ljava/io/File;)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->maxCacheFilesCount(I)Lcom/danikula/videocache/HttpProxyCacheServer$Builder;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpProxyCacheServer$Builder;->build()Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/libvlc/util/CacheUtils;->cleanVideoCacheDir(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/ProxyCacheManager;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1}, Lcom/danikula/videocache/HttpProxyCacheServer;->shutdown()V

    :cond_0
    return-void
.end method

.method public doCacheLogic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mSupportCache:Z

    iput-boolean v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mFullCached:Z

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "127.0.0.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".m3u8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/ProxyCacheManager;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->isCached(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mFullCached:Z

    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1, p0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->registerCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->getProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mSupportCache:Z

    iget-object v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {v0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->preCache(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mFullCached:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/videolan/libvlc/ProxyCacheManager;->cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

    if-eqz p2, :cond_2

    sget-object p2, Lorg/videolan/libvlc/ProxyCacheManager;->TAG:Ljava/lang/String;

    const-string v0, "Already full cached"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lorg/videolan/libvlc/ProxyCacheManager;->cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

    const/16 v0, 0x64

    invoke-interface {p2, p1, v0}, Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;->onCacheAvailable(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object p1, p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public isSupportCache()Z
    .locals 1

    iget-boolean v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->mSupportCache:Z

    return v0
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/videolan/libvlc/ProxyCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cached percent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",url "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

    invoke-interface {p1, p2, p3}, Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;->onCacheAvailable(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCacheAvailableListener(Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->cacheAvailableListener:Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;

    return-void
.end method

.method public stopCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "127.0.0.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".m3u8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/videolan/libvlc/ProxyCacheManager;->getProxy(Landroid/content/Context;)Lcom/danikula/videocache/HttpProxyCacheServer;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1, p0, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->unregisterCacheListener(Lcom/danikula/videocache/CacheListener;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/videolan/libvlc/ProxyCacheManager;->proxy:Lcom/danikula/videocache/HttpProxyCacheServer;

    invoke-virtual {p1, p2}, Lcom/danikula/videocache/HttpProxyCacheServer;->stopCache(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
