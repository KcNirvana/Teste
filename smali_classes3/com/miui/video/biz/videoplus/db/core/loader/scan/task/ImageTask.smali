.class public Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;
.super Ljava/lang/Object;
.source "ImageTask.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ITask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCancel:Z

.field private mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->queryAllImagesFromMediaStore()V

    return-void
.end method

.method private getLastMediaId()J
    .locals 5

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MapId:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v3, "%image%"

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask$1;-><init>(Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;)V

    return-object v0
.end method

.method private isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mIsCancel:Z

    return v0
.end method

.method private queryAllImagesFromMediaStore()V
    .locals 24

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->getLastMediaId()J

    move-result-wide v3

    const-string v0, ""

    const-string v5, "_id"

    const-string v6, "_data"

    const-string v7, "title"

    const-string v8, "mime_type"

    const-string v9, "_display_name"

    const-string v10, "_size"

    const-string v11, "date_added"

    const-string v12, "date_modified"

    const-string v13, "width"

    const-string v14, "height"

    const-string v15, "latitude"

    const-string v16, "longitude"

    const-string v17, "bucket_display_name"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v20

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_size > 0 and _id > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v3, v1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    const-string v23, "date_modified desc "

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->isCancelled()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->isCancelled()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    invoke-static {v3}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryImageFromMediaStore(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    const-string v3, "lsy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new add image data size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-interface {v3, v4, v2, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;->onCompleted(ZLjava/util/List;Ljava/lang/String;)V

    :cond_9
    return-void

    :goto_3
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mIsCancel:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->mListener:Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/OnTaskCompletedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/scan/task/ImageTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
