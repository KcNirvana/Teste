.class public Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;
.super Ljava/lang/Object;
.source "VideoChangeWatcher.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x3e8

.field private static final WHAT_BATCH_ADD:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->createHandler()Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;)Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->batchAdd()V

    return-void
.end method

.method private batchAdd()V
    .locals 9

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->queryFromMediaStore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->FilePath:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MapId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "lsy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoChangeWatcher ::: add video : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsParsed()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

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

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {v1, v7}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getWidth()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getFlagsExceptCover()I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getRotation()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setWidth(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHeight(I)V

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/ImageInfo;->getWidth()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoChangeWathcer ::: insert error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    invoke-interface {v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;->onAdded(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    :cond_6
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getInstance()Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->start()V

    new-instance v2, Lcom/miui/video/biz/videoplus/db/core/loader/observer/-$$Lambda$VideoChangeWatcher$YWUeb_eli_V3AHAuuJoBccIwiR8;

    invoke-direct {v2, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/-$$Lambda$VideoChangeWatcher$YWUeb_eli_V3AHAuuJoBccIwiR8;-><init>(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    invoke-static {v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private createHandler()Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoWatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;Landroid/os/Looper;)V

    return-object v1
.end method

.method static synthetic lambda$batchAdd$2(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ADD:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    invoke-virtual {v0, v1, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method private queryFromMediaStore()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->getLastMediaId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/VideoQueryUtils;->buildQueryWhereString(J)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id DESC"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryVideoListFromMediaStore(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/VideoChangeWatcher$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
