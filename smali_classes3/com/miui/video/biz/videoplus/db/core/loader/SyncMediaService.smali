.class public Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;
.super Ljava/lang/Object;
.source "SyncMediaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$BackgroundSyncListener;,
        Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;,
        Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncMediaService"

.field private static mLoadCompleted:Z


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMediaLoadListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

.field private mScanner:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$2;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mOnMediaLoadListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->getScanner()Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mOnMediaLoadListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->setOnMediaLoadListener(Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner$OnMediaLoadListener;)Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mLoadCompleted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->insertData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->loadLocation()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->startWatchingMediaChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyData()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->updateData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->deleteLostData()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private deleteLostData()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    :cond_3
    const-string v0, "lsy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDirList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->getSql()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :catch_0
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method private getScanner()Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mScanner:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mScanner:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mScanner:Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    return-object v0
.end method

.method private getSql()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "medias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " group by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static isLoadCompleted()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mLoadCompleted:Z

    return v0
.end method

.method private loadLocation()V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getInstance()Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->start()V

    return-void
.end method

.method private notifyData()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$3;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startWatchingMediaChange()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->stop()V

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->getDirList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->start()V

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SyncMediaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateData: 1111 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    const-string v2, "SyncMediaService"

    const-string v3, "  yqf  6 VideoInfo.parse: getFrameAtTime"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getFlagsExceptCover()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {v1, v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    const-string v1, "SyncMediaService"

    const-string v2, "updateData: video"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v1, "SyncMediaService"

    const-string v2, "updateData: image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v0, "SyncMediaService"

    const-string v1, "updateData: 2222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public getObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    return-object v0
.end method

.method public notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    const-string v0, "lsy"

    const-string v1, "notifyMediaChange "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;

    invoke-interface {v1, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;->onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mMediaWatcher:Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/MediaChangeWatcher;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObservers()V

    return-void
.end method

.method public syncMediaDatas()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->getScanner()Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/LocalMediaScanner;->start()V

    return-void
.end method

.method public unregisterObserver(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterObservers()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
