.class public Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;
.super Ljava/lang/Object;
.source "ScreenshotSourceEntity.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private mGalleryItemEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->mGalleryItemEntityList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getGalleryItemEntityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->mGalleryItemEntityList:Ljava/util/List;

    return-object v0
.end method

.method public getItemEntityListSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->mGalleryItemEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAppname(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/ScreenshotSourceEntity;->appName:Ljava/lang/String;

    return-object p0
.end method
