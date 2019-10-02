.class public Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;
.super Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;
.source "ImageDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider<",
        "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWxFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;-><init>()V

    const-string v0, "wx_camera_"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mWxFileName:Ljava/lang/String;

    return-void
.end method

.method public static createQueryWhereTimeDimensionAndLocationSql(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 2

    invoke-static {p3}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->getTimeColumnName(I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "medias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " = \'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is null "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " ( "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is null "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ) "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " is null "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, " = \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%image%\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%video%\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    :pswitch_2
    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->IsHidded:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = \'0\' "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/DCIM/Camera"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\' or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\' or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\' or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DirectoryPath:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " like \'%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/tencent/MicroMsg/WeChat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " order by "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " desc;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private filterEntity2List(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/Tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/tencent/MicroMsg/WeChat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wx_camera_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method private getList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget v0, v7, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mIndex:I

    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :goto_0
    invoke-static {v9, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->createQueryByTimeSql(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v2

    const/4 v11, 0x0

    invoke-interface {v2, v1, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_7

    :goto_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->getTimeColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9, v0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaFetcher;->createQueryWhereTimeDimensionGroupByDayAndLocationSql(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v2

    invoke-interface {v2, v1, v11}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_5

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v15, 0x0

    if-ne v1, v10, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-direct {v7, v0, v13}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->getWhereCondition(ILjava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v3, v10, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->MimeType:Lorg/greenrobot/greendao/Property;

    const-string v5, "%image%"

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-virtual {v1, v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    new-array v2, v10, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->DateModified:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v15

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-direct {v7, v8, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->filterEntity2List(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Z

    move-result v2

    goto :goto_2

    :cond_0
    const/16 v16, 0x1

    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Location:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Address:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v6

    move v5, v0

    move-object v9, v6

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->loadDataWhereDayAndLocation(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lcom/miui/video/biz/videoplus/db/core/utils/GeocoderLoader;->createFakeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v9}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setAddress(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x2

    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    :goto_5
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    :try_start_3
    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_6
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :goto_7
    const/4 v9, 0x2

    goto/16 :goto_1

    :cond_6
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :goto_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    :goto_a
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWhereCondition(ILjava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;
    .locals 0

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Date:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Month:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao$Properties;->Year:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()J
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    const-string v2, "/Tencent/MicroMsg/WeiXin"

    const-string v3, "/tencent/MicroMsg/WeiXin"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->fuzzyQueryImageCountWhereOrDirectory([Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadDataWhereDayAndLocation(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->createQueryWhereTimeDimensionAndLocationSql(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/db/core/utils/MediaQueryTransfer;->queryMediaEntity(Landroid/database/Cursor;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->filterEntity2List(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_1
    :goto_3
    return-object p2
.end method

.method protected startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mDataGroup:Landroid/util/SparseArray;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->transferToMomentEntityForImage(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic startLoad(II)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/ImageDataLoader;->startLoad(II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p1

    return-object p1
.end method
