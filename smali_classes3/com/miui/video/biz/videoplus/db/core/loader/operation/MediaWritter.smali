.class public Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;
.super Lcom/miui/video/biz/videoplus/db/core/loader/operation/BaseMediaWritter;
.source "MediaWritter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/db/core/loader/operation/BaseMediaWritter<",
        "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/BaseMediaWritter;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;->delete(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->deleteAll()V

    return-void
.end method

.method public deleteInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public insert(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;->insert(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public insertInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->insertInTx(Ljava/lang/Iterable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public insertOrReplace(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public bridge synthetic insertOrReplace(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;->insertOrReplace(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public insertOrReplaceInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/MediaWritter;->update(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method

.method public updateInTx(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getInstance()Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->getSession()Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/DaoSession;->getLocalMediaEntityDao()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntityDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
