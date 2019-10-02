.class public Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;
.super Ljava/lang/Object;
.source "ImageChangeWatcher.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

.field private mLastItemId:J

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->createHandler()Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->batchAdd()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;)Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    return-object p0
.end method

.method private batchAdd()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->queryFromMediaStore()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const-string v3, "lsy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageChangeWatcher ::: add image : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageChangeWathcer ::: insert error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;

    invoke-interface {v3, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/IChangeWatcher$OnMediaAddedListener;->onAdded(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->getInstance()Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->start()V

    new-instance v3, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;

    invoke-direct {v3, p0, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$2;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    invoke-static {v3}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createHandler()Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageWatcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private queryFromMediaStore()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    iget-wide v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mLastItemId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "_id desc limit 1"

    :goto_0
    move-object v5, v0

    move-object v7, v1

    goto :goto_1

    :cond_0
    const-string v1, "_id desc "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id > \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mLastItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryImageListFromMediaStore(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-static {v2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->FilePath:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    new-array v7, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v5, v6, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mLastItemId:J

    :cond_5
    return-object v1
.end method


# virtual methods
.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher;->mHandler:Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/observer/ImageChangeWatcher$MyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
