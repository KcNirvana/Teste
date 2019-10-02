.class public Lcom/miui/video/biz/ugc/player/UGCCacheManager;
.super Ljava/lang/Object;
.source "UGCCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/video/biz/ugc/player/UGCCacheManager; = null

.field private static final MAX_CACHING_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SmallVideoCacheManager"


# instance fields
.field private mCacheManager:Lorg/videolan/libvlc/ICacheManager;

.field private mCachingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    invoke-direct {v0}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;-><init>()V

    sput-object v0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->INSTANCE:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-static {}, Lorg/videolan/libvlc/CacheFactory;->getCacheManager()Lorg/videolan/libvlc/ICacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    new-instance v1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$1;-><init>(Lcom/miui/video/biz/ugc/player/UGCCacheManager;)V

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/ICacheManager;->setCacheAvailableListener(Lorg/videolan/libvlc/ICacheManager$ICacheAvailableListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/ugc/player/UGCCacheManager;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/ugc/player/UGCCacheManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->trackCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/ugc/player/UGCCacheManager;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->INSTANCE:Lcom/miui/video/biz/ugc/player/UGCCacheManager;

    return-object v0
.end method

.method private trackCache(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "video_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cost"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "small_video"

    const-string v1, ""

    const-string v2, "small_videos_preload"

    invoke-static {p2, v1, v2}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p1, p2, v0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public cacheVideo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "SmallVideoCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-interface {v0, p3, p2}, Lorg/videolan/libvlc/ICacheManager;->doCacheLogic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "SmallVideoCacheManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache video failed "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/miui/video/framework/log/LogUtils;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "SmallVideoCacheManager"

    const-string p2, "already cached ."

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-static {v3}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;-><init>(Lcom/miui/video/biz/ugc/player/UGCCacheManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SmallVideoCacheManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachingQueue add : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1, v0}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$502(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "SmallVideoCacheManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  is caching ."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/4 p2, 0x3

    if-le p1, p2, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    iget-object p2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lorg/videolan/libvlc/ICacheManager;->stopCache(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "SmallVideoCacheManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCache : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const-string p1, "SmallVideoCacheManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "current caching queue size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_6
    return-object p2
.end method

.method public clearCache(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-interface {v0, p1}, Lorg/videolan/libvlc/ICacheManager;->clearCache(Landroid/content/Context;)V

    return-void
.end method

.method public isCacheUrl(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public pause(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$600(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    const-string v2, "SmallVideoCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lorg/videolan/libvlc/ICacheManager;->stopCache(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restart(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$600(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    const-string v2, "SmallVideoCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/videolan/libvlc/ICacheManager;->stopCache(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$100(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/videolan/libvlc/ICacheManager;->doCacheLogic(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$502(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCacheManager:Lorg/videolan/libvlc/ICacheManager;

    invoke-interface {v0, p3, p2}, Lorg/videolan/libvlc/ICacheManager;->stopCache(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;->access$200(Lcom/miui/video/biz/ugc/player/UGCCacheManager$CacheInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/UGCCacheManager;->mCachingQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "SmallVideoCacheManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCache : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
