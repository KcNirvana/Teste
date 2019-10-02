.class public Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
.source "GalleryItemEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public addList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public compareTo(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I
    .locals 4
    .param p1    # Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateAdded()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDateAdded()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->compareTo(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)I

    move-result p1

    return p1
.end method

.method public createInstance(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object p0
.end method

.method public getBucketDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getBucketDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrPlayTime()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getCurrPlayTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDateAdded()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateAdded()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getDirectoryPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getIsParsed()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsParsed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLatitude()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalMediaEntity()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object v0
.end method

.method public getLongtitude()D
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLongtitude()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getRotation()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFastSlowVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsFastSlowVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHidded()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsHidded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImage()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportAiMusic()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getIsSupportAiMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setChecked(Z)V

    :cond_0
    return-object p0
.end method

.method public setDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public setEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setFileName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setHidded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setHidded(Z)V

    :cond_0
    return-void
.end method

.method public setIsFastSlowVideo(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsFastSlowVideo(Z)V

    :cond_0
    return-void
.end method

.method public setIsParsed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsParsed(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setIsSupportAiMusic(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setIsSupportAiMusic(Z)V

    :cond_0
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->entity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->setRotation(I)V

    :cond_0
    return-void
.end method
