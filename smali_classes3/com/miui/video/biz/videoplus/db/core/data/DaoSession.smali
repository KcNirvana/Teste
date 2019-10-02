.class public Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final localMediaEntityDao:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

.field private final localMediaEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    const-class p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDao:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    const-class p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDao:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->localMediaEntityDao:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    return-object v0
.end method
