.class public Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;
.source "MiOkHttpDataSourceFactory.java"


# instance fields
.field private final addHeader:Ljava/util/HashMap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cacheControl:Lokhttp3/CacheControl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final callFactory:Lokhttp3/Call$Factory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .param p1    # Lokhttp3/Call$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;)V
    .locals 0
    .param p1    # Lokhttp3/Call$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lokhttp3/CacheControl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call$Factory;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lokhttp3/CacheControl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$BaseFactory;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->addHeader:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iput-object p5, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSource;

    move-result-object p1

    return-object p1
.end method

.method protected createDataSourceInternal(Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSource;
    .locals 9

    new-instance v8, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSource;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->callFactory:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->addHeader:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    iget-object v6, p0, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSourceFactory;->cacheControl:Lokhttp3/CacheControl;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/MiOkHttpDataSource;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;Ljava/util/HashMap;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;Lokhttp3/CacheControl;Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-object v8
.end method
