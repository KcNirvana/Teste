.class public Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
.source "GalleryFolderEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private createTime:J

.field private folder:Ljava/lang/String;

.field private folderType:I

.field private mGalleryItemEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private posterPath:Ljava/lang/String;

.field private purFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public addList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->createTime:J

    return-wide v0
.end method

.method public getFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->folderType:I

    return v0
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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    return-object v0
.end method

.method public getPosterPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPurFolder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->purFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getShownTitle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getPurFolder()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getAlias()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSize()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getLayoutType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public setCreateTime(J)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->createTime:J

    return-object p0
.end method

.method public setFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->folder:Ljava/lang/String;

    return-object p0
.end method

.method public setFolderType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->folderType:I

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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->mGalleryItemEntityList:Ljava/util/List;

    return-void
.end method

.method public setPosterPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->posterPath:Ljava/lang/String;

    return-void
.end method

.method public setPurFolder(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->purFolder:Ljava/lang/String;

    return-object p0
.end method
