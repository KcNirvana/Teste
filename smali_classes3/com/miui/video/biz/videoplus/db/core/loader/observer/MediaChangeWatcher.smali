.class public Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;
.super Ljava/lang/Object;
.source "MediaChangeWatcher.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

.field private mWatcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;

    invoke-direct {v0, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/FileDeleteWatcher;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    new-instance p2, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    invoke-direct {p2, v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;-><init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->mWatcherList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;->stop()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
