.class public abstract Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
.super Lcom/miui/video/framework/base/entity/PageEntity;
.source "GalleryPageEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/video/framework/base/entity/PageEntity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private spanCount:I

.field private spanSize:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/framework/base/entity/PageEntity;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanCount:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanSize:I

    return-void
.end method


# virtual methods
.method public abstract addList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public getSpanCount()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanCount:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setSpanCount(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanCount:I

    return-object p0
.end method

.method public setSpanSize(I)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->spanSize:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryPageEntity;->title:Ljava/lang/String;

    return-object p0
.end method
