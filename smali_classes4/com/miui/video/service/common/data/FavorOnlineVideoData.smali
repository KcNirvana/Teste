.class public Lcom/miui/video/service/common/data/FavorOnlineVideoData;
.super Ljava/lang/Object;
.source "FavorOnlineVideoData.java"

# interfaces
.implements Lcom/miui/video/service/common/data/IVideoListData;


# instance fields
.field private isAllChecked:Z

.field private mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isVideoHistoryListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getCheckedVideoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/base/database/VideoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDataType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getVideoListChecked()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isVideoHistoryListEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isAllChecked:Z

    return-void
.end method

.method public getVideoListEntity()Lcom/miui/video/service/common/data/VideoListEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/VideoListEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    return-object v0
.end method

.method public isAllChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isAllChecked:Z

    return v0
.end method

.method public runDeleteVideoList()Z
    .locals 3

    new-instance v0, Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-direct {v0}, Lcom/miui/video/service/common/data/VideoListEntity;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->getCheckedVideoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/data/VideoListEntity;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v1}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/miui/video/service/common/data/FavorOnlineVideoData$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData$1;-><init>(Lcom/miui/video/service/common/data/FavorOnlineVideoData;Lcom/miui/video/service/common/data/VideoListEntity;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    return v0
.end method

.method public runInitVideoList()V
    .locals 0

    return-void
.end method

.method public setVideoListChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isAllChecked:Z

    invoke-direct {p0}, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->isVideoHistoryListEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    invoke-virtual {v0}, Lcom/miui/video/service/common/data/VideoListEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/VideoEntity;->setChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoListEntity(Lcom/miui/video/service/common/data/VideoListEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/common/data/FavorOnlineVideoData;->mVideoListEntity:Lcom/miui/video/service/common/data/VideoListEntity;

    return-void
.end method
