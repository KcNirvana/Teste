.class public Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;
.super Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;
.source "GalleryData.java"


# instance fields
.field private allGalleryGeting:Z

.field folderGalleryGeting:Z

.field private videoGalleryGeting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/fragmentplus/BaseData;-><init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActivityListener;Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->allGalleryGeting:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->videoGalleryGeting:Z

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->folderGalleryGeting:Z

    return-void
.end method

.method private getAllGalleryEntity()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->allGalleryGeting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->allGalleryGeting:Z

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$bMr2woaMYM69BB6PGU39YQJ0G6Q;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$bMr2woaMYM69BB6PGU39YQJ0G6Q;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getVideoGalleryEntity()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->videoGalleryGeting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->videoGalleryGeting:Z

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$KW2eb8pcDwtvnaXyYUMvS-ez8rM;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$KW2eb8pcDwtvnaXyYUMvS-ez8rM;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$getAllGalleryEntity$12(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getAllGalleryList()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$glicFDhMBOkj-XIsUNCTCrv52Ms;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$glicFDhMBOkj-XIsUNCTCrv52Ms;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$getFolderGalleryEntity$17(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getFolderGalleryList(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$DNsyPW4Z275Y2yuYI2yRCUsG-ZI;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$DNsyPW4Z275Y2yuYI2yRCUsG-ZI;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$getVideoGalleryEntity$14(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/utils/GalleryUtils;->getVideoGalleryList()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$3hsOkc0xxKIYoc_-rdTBzVCrWBg;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$3hsOkc0xxKIYoc_-rdTBzVCrWBg;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$null$11(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const-string v2, "ACTION_SET_VALUE"

    invoke-interface {v0, v2, v1, p1}, Lcom/miui/video/framework/impl/IActivityListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->allGalleryGeting:Z

    return-void
.end method

.method public static synthetic lambda$null$13(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const-string v2, "ACTION_SET_VALUE"

    invoke-interface {v0, v2, v1, p1}, Lcom/miui/video/framework/impl/IActivityListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->videoGalleryGeting:Z

    return-void
.end method

.method static synthetic lambda$null$15(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateModified()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic lambda$null$16(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$BFUSgGwPkP6TxlZ2PE79oNHLOug;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->mListener:Lcom/miui/video/framework/impl/IActivityListener;

    const-string v2, "ACTION_SET_VALUE"

    invoke-interface {v0, v2, v1, p1}, Lcom/miui/video/framework/impl/IActivityListener;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->folderGalleryGeting:Z

    return-void
.end method


# virtual methods
.method public getFolderGalleryEntity(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->folderGalleryGeting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->folderGalleryGeting:Z

    invoke-static {}, Lcom/miui/video/framework/task/ThreadPoolManager;->getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$z-JvspWGsUpdGBGO5YSJ1e3VG1Q;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/-$$Lambda$GalleryData$z-JvspWGsUpdGBGO5YSJ1e3VG1Q;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getGalleryEntity(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->getAllGalleryEntity()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/GalleryData;->getVideoGalleryEntity()V

    :cond_1
    :goto_0
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
