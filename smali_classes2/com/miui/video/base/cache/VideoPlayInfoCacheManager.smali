.class public Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;
.super Ljava/lang/Object;
.source "VideoPlayInfoCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$VideoPlayInfoCacheHolder;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.miui.video.base.cache.VideoPlayInfoCacheManager"


# instance fields
.field cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/miui/video/base/common/net/model/PlayEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "VideoPlayInfoCacheManager has loaded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager$VideoPlayInfoCacheHolder;->access$100()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/miui/video/base/common/net/model/PlayEntity;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/common/net/model/PlayEntity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lcom/miui/video/base/common/net/model/PlayEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->cache:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/PlayEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
