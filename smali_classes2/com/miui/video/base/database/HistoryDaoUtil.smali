.class public Lcom/miui/video/base/database/HistoryDaoUtil;
.super Ljava/lang/Object;
.source "HistoryDaoUtil.java"


# static fields
.field private static final DUBUG:Z = true

.field public static final MIN_HISTORY_OFFSET:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "HistoryDaoUtil"

.field private static volatile mHistoryDaoUtil:Lcom/miui/video/base/database/HistoryDaoUtil;


# instance fields
.field private daoSession:Lcom/miui/video/base/database/DaoSession;

.field private manager:Lcom/miui/video/base/database/DaoManager;


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

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/HistoryDaoUtil;->daoSession:Lcom/miui/video/base/database/DaoSession;

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/DaoManager;->setDebug(Z)V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/database/HistoryDaoUtil;
    .locals 3

    sget-object v0, Lcom/miui/video/base/database/HistoryDaoUtil;->mHistoryDaoUtil:Lcom/miui/video/base/database/HistoryDaoUtil;

    if-nez v0, :cond_0

    const-class v0, Lcom/miui/video/base/database/HistoryDaoUtil;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/video/base/database/HistoryDaoUtil;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/base/database/HistoryDaoUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/base/database/HistoryDaoUtil;->mHistoryDaoUtil:Lcom/miui/video/base/database/HistoryDaoUtil;

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
    sget-object v0, Lcom/miui/video/base/database/HistoryDaoUtil;->mHistoryDaoUtil:Lcom/miui/video/base/database/HistoryDaoUtil;

    return-object v0
.end method


# virtual methods
.method public HistoryFilter(Lcom/miui/video/base/database/OVHistoryEntity;)Lcom/miui/video/base/database/OVHistoryEntity;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/OVHistoryEntity;->getOffset()I

    move-result v1

    const/16 v2, 0x1388

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public changeHideStateByPath(Lcom/miui/video/base/database/LocalVideoHistoryEntity;Ljava/lang/Boolean;)V
    .locals 4

    const-string v0, "HistoryDaoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeHideStateByPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHide == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getIs_hide()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method

.method public changeHideStateByPath(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setIs_hide(Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->insertLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->deleteAll(Ljava/lang/Class;)V

    return-void
.end method

.method public deleteLocalHistoryByPath(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteOnLineHistoryById(Ljava/lang/Long;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVHistoryEntity;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public deleteOnLineHistoryByPlaylistid(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Playlist_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVHistoryEntity;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method

.method public deleteOnLineHistoryByVid(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v3, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Vid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVHistoryEntity;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method

.method public deleteOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public insertLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 3

    const-string v0, "HistoryDaoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLocalVideoHistory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isHide == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getIs_hide()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public insertMultLocalVideoHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoHistoryEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/HistoryDaoUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil$1;-><init>(Lcom/miui/video/base/database/HistoryDaoUtil;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertMultOnLineVideoHistory(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/HistoryDaoUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil$2;-><init>(Lcom/miui/video/base/database/HistoryDaoUtil;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->HistoryFilter(Lcom/miui/video/base/database/OVHistoryEntity;)Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVHistoryEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVHistoryEntity;->getVid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/database/OVHistoryEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setId(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public isHistoryExistInNewDataBase(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVHistoryEntity;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public isHistoryExistInOldDataBase(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/OldOVHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/OldOVHistoryEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OldOVHistoryEntity;

    if-eqz p1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public isVideoHistoryExist(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->isHistoryExistInNewDataBase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/HistoryDaoUtil;->isHistoryExistInOldDataBase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public queryAllLocalVideoHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllOldOnLineVideoHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OldOVHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OldOVHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllOnLineVideoHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryLocalVideoHistoryByID(J)Lcom/miui/video/base/database/LocalVideoHistoryEntity;
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/base/database/DaoSession;->load(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    return-object p1
.end method

.method public queryLocalVideoHistoryByMd5Path(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/LocalVideoHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v2, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao$Properties;->Md5_path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryOnLineVideoHistoryByEid(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryOnLineVideoHistoryByPlaylistId(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Playlist_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryOnLineVideoHistoryByVid(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVHistoryEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/database/OVHistoryEntityDao$Properties;->Vid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public updateLocalVideoHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public updateOnLineVideoHistory(Lcom/miui/video/base/database/OVHistoryEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method
