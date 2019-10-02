.class public Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;
.super Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;
.source "PlusSearchData.java"


# instance fields
.field private mSearching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mSearching:Z

    return-void
.end method

.method public static synthetic lambda$getSearchEntity$63(Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryVideoWhereFileName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-direct {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;-><init>()V

    invoke-virtual {v4, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->createInstance(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setLayoutType(I)V

    const/4 v3, 0x3

    invoke-virtual {v4, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setList(Ljava/util/List;)V

    invoke-virtual {v2, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/search/data/-$$Lambda$PlusSearchData$EilZNuPUG8B9bMjJn4VTU3-_eRc;

    invoke-direct {p1, p0, v2}, Lcom/miui/video/biz/videoplus/app/business/search/data/-$$Lambda$PlusSearchData$EilZNuPUG8B9bMjJn4VTU3-_eRc;-><init>(Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$null$62(Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const-string v2, "KEY_SEARCH_KEY"

    invoke-interface {v0, v2, v1, p1}, Lcom/miui/video/framework/impl/IActivityListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mSearching:Z

    return-void
.end method


# virtual methods
.method public getSearchEntity(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mSearching:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;->mSearching:Z

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/search/data/-$$Lambda$PlusSearchData$8fIGvOXYv0nEo7ohtLsLDVJxh_s;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/videoplus/app/business/search/data/-$$Lambda$PlusSearchData$8fIGvOXYv0nEo7ohtLsLDVJxh_s;-><init>(Lcom/miui/video/biz/videoplus/app/business/search/data/PlusSearchData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startData(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public stopData()V
    .locals 0

    return-void
.end method
