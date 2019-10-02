.class public Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
.source "GalleryListEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
        "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mGalleryEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->mGalleryEntityList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->mGalleryEntityList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->mGalleryEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->mGalleryEntityList:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->mGalleryEntityList:Ljava/util/List;

    return-void
.end method
