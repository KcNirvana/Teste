.class public Lcom/miui/video/base/database/FavorDaoUtil;
.super Ljava/lang/Object;
.source "FavorDaoUtil.java"


# static fields
.field private static final DUBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "FavorDaoUtil"

.field private static volatile mFavorDaoUtil:Lcom/miui/video/base/database/FavorDaoUtil;


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

.method public static getInstance()Lcom/miui/video/base/database/FavorDaoUtil;
    .locals 3

    sget-object v0, Lcom/miui/video/base/database/FavorDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/FavorDaoUtil;

    if-nez v0, :cond_0

    const-class v0, Lcom/miui/video/base/database/FavorDaoUtil;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/video/base/database/FavorDaoUtil;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/base/database/FavorDaoUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/video/base/database/FavorDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/FavorDaoUtil;

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
    sget-object v0, Lcom/miui/video/base/database/FavorDaoUtil;->mFavorDaoUtil:Lcom/miui/video/base/database/FavorDaoUtil;

    return-object v0
.end method


# virtual methods
.method public changeFavorPlayListUPloadFlag(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OVFavorPlayListEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setUploaded(I)V

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->updateFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string p2, "FavorDaoUtil"

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public changeFavorVideoUPloadFlag(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OldFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/OldFavorVideoEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/miui/video/base/database/OldFavorVideoEntity;->setUploaded(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/base/database/FavorDaoUtil;->updateFavorVideo(Lcom/miui/video/base/database/OldFavorVideoEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v3

    const-class v4, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/video/base/database/OVFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVFavorVideoEntity;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUploaded(I)V

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->updateFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    :goto_1
    const-string p2, "FavorDaoUtil"

    invoke-static {p2, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return v1
.end method

.method public deleteFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorPlayListByEid(Ljava/lang/String;)Z
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

    const-class v3, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/video/base/database/OVFavorPlayListEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FavorDaoUtil"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public deleteFavorPlayListByPlayId(Ljava/lang/String;)Z
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

    const-class v3, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/video/base/database/OVFavorPlayListEntityDao$Properties;->Playlist_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FavorDaoUtil"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public deleteFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorVideo(Lcom/miui/video/base/database/OldFavorVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteFavorVideoByEid(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v2

    const-class v3, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v2, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/miui/video/base/database/OVFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v4, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "FavorDaoUtil"

    invoke-static {v3, v2}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v3

    const-class v4, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-virtual {v3, v4}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/video/base/database/OldFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v4, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v3, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "FavorDaoUtil"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v2
.end method

.method public deleteFavorVideoByVid(Ljava/lang/String;)Z
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

    const-class v3, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/miui/video/base/database/OVFavorVideoEntityDao$Properties;->VideoId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/video/base/database/DaoSession;->delete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "FavorDaoUtil"

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public insertFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public insertFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public isFavorPlayListExist(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OVFavorPlayListEntityDao$Properties;->Playlist_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    return v2

    :catch_0
    move-exception p1

    const-string v1, "FavorDaoUtil"

    invoke-static {v1, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public isFavorVideoExist(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistInNewDataBase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistInOldDataBase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isFavorVideoExistByVideoId(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistInNewDataBaseByVid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/video/base/database/FavorDaoUtil;->isFavorVideoExistInOldDataBase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isFavorVideoExistInNewDataBase(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OVFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    return v2

    :catch_0
    move-exception p1

    const-string v1, "FavorDaoUtil"

    invoke-static {v1, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public isFavorVideoExistInNewDataBaseByVid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OVFavorVideoEntityDao$Properties;->VideoId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    return v2

    :catch_0
    move-exception p1

    const-string v1, "FavorDaoUtil"

    invoke-static {v1, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public isFavorVideoExistInOldDataBase(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v1

    const-class v3, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/base/database/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/miui/video/base/database/OldFavorVideoEntityDao$Properties;->Eid:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    new-array v3, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    return v2

    :catch_0
    move-exception p1

    const-string v1, "FavorDaoUtil"

    invoke-static {v1, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public queryAllFavorPlayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllFavorVideo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OVFavorVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllOldFavorVideo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/OldFavorVideoEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    const-class v1, Lcom/miui/video/base/database/OldFavorVideoEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoSession;->loadAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateFavorPlayList(Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public updateFavorVideo(Lcom/miui/video/base/database/OVFavorVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public updateFavorVideo(Lcom/miui/video/base/database/OldFavorVideoEntity;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/database/DaoManager;->getInstance()Lcom/miui/video/base/database/DaoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/DaoManager;->getDaoSession(Z)Lcom/miui/video/base/database/DaoSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/DaoSession;->update(Ljava/lang/Object;)V

    return-void
.end method
