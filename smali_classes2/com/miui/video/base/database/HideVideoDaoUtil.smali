.class public Lcom/miui/video/base/database/HideVideoDaoUtil;
.super Ljava/lang/Object;
.source "HideVideoDaoUtil.java"


# static fields
.field private static final DUBUG:Z = true

.field private static final IS_ONLINE:Z = false

.field private static final TAG:Ljava/lang/String; = "HideVideoDaoUtil"

.field private static volatile mFavorDaoUtil:Lcom/miui/video/base/database/HideVideoDaoUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/DaoManager;->setDebug(Z)V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/database/HideVideoDaoUtil;
    .locals 3

    sget-object v0, Lcom/miui/video/base/database/HideVideoDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/HideVideoDaoUtil;

    if-nez v0, :cond_0

    const-class v0, Lcom/miui/video/base/database/HideVideoDaoUtil;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/video/base/database/HideVideoDaoUtil;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/base/database/HideVideoDaoUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/base/database/HideVideoDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/HideVideoDaoUtil;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/miui/video/base/database/HideVideoDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/HideVideoDaoUtil;

    return-object v0
.end method


# virtual methods
.method public deleteHideVideo(Lcom/miui/video/base/database/HideVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteHideVideoByEid(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public insertHideVideo(Lcom/miui/video/base/database/HideVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public isHideVideo(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v2, Lcom/miui/video/base/database/HideVideoEntity;

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/video/base/database/HideVideoEntityDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/HideVideoEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    const-string v1, "HideVideoDaoUtil"

    invoke-static {v1, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public queryAllHideVideo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/HideVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/HideVideoEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateHideVideo(Lcom/miui/video/base/database/HideVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method
