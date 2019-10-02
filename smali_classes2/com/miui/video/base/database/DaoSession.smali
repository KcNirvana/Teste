.class public Lcom/miui/video/base/database/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final hideVideoEntityDao:Lcom/miui/video/base/database/HideVideoEntityDao;

.field private final hideVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final localVideoHistoryEntityDao:Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

.field private final localVideoHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final oVFavorPlayListEntityDao:Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

.field private final oVFavorPlayListEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final oVFavorVideoEntityDao:Lcom/miui/video/base/database/OVFavorVideoEntityDao;

.field private final oVFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final oVHistoryEntityDao:Lcom/miui/video/base/database/OVHistoryEntityDao;

.field private final oVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final oldFavorVideoEntityDao:Lcom/miui/video/base/database/OldFavorVideoEntityDao;

.field private final oldFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final oldOVHistoryEntityDao:Lcom/miui/video/base/database/OldOVHistoryEntityDao;

.field private final oldOVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


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

    const-class p1, Lcom/miui/video/base/database/OVHistoryEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    const-class p1, Lcom/miui/video/base/database/HideVideoEntityDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object p1, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p1, Lcom/miui/video/base/database/OVHistoryEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/OVHistoryEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDao:Lcom/miui/video/base/database/OVHistoryEntityDao;

    new-instance p1, Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/OVFavorVideoEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDao:Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    new-instance p1, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDao:Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    new-instance p1, Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/OldOVHistoryEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDao:Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    new-instance p1, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/OVFavorPlayListEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDao:Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    new-instance p1, Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/OldFavorVideoEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDao:Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    new-instance p1, Lcom/miui/video/base/database/HideVideoEntityDao;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/base/database/HideVideoEntityDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/miui/video/base/database/DaoSession;)V

    iput-object p1, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDao:Lcom/miui/video/base/database/HideVideoEntityDao;

    const-class p1, Lcom/miui/video/base/database/OVHistoryEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDao:Lcom/miui/video/base/database/OVHistoryEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorVideoEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDao:Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDao:Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/OldOVHistoryEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDao:Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDao:Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/OldFavorVideoEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDao:Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    const-class p1, Lcom/miui/video/base/database/HideVideoEntity;

    iget-object p2, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDao:Lcom/miui/video/base/database/HideVideoEntityDao;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/database/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getHideVideoEntityDao()Lcom/miui/video/base/database/HideVideoEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->hideVideoEntityDao:Lcom/miui/video/base/database/HideVideoEntityDao;

    return-object v0
.end method

.method public getLocalVideoHistoryEntityDao()Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->localVideoHistoryEntityDao:Lcom/miui/video/base/database/LocalVideoHistoryEntityDao;

    return-object v0
.end method

.method public getOVFavorPlayListEntityDao()Lcom/miui/video/base/database/OVFavorPlayListEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorPlayListEntityDao:Lcom/miui/video/base/database/OVFavorPlayListEntityDao;

    return-object v0
.end method

.method public getOVFavorVideoEntityDao()Lcom/miui/video/base/database/OVFavorVideoEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVFavorVideoEntityDao:Lcom/miui/video/base/database/OVFavorVideoEntityDao;

    return-object v0
.end method

.method public getOVHistoryEntityDao()Lcom/miui/video/base/database/OVHistoryEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oVHistoryEntityDao:Lcom/miui/video/base/database/OVHistoryEntityDao;

    return-object v0
.end method

.method public getOldFavorVideoEntityDao()Lcom/miui/video/base/database/OldFavorVideoEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oldFavorVideoEntityDao:Lcom/miui/video/base/database/OldFavorVideoEntityDao;

    return-object v0
.end method

.method public getOldOVHistoryEntityDao()Lcom/miui/video/base/database/OldOVHistoryEntityDao;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/database/DaoSession;->oldOVHistoryEntityDao:Lcom/miui/video/base/database/OldOVHistoryEntityDao;

    return-object v0
.end method
