.class public Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;
.super Ljava/lang/Object;
.source "FolderListStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore$Holder;
    }
.end annotation


# instance fields
.field private mFlag:I

.field private mFrom:I

.field private mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

.field private mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore$Holder;->INSTANT:Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFrom:I

    return-void
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFlag:I

    return v0
.end method

.method public getFolderFrom()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFrom:I

    return v0
.end method

.method public getGalleryEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    return-object v0
.end method

.method public getPageEntity()Lcom/miui/video/framework/base/entity/PageEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFlag:I

    return-void
.end method

.method public setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V

    return-void
.end method

.method public setGalleryEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mGalleryEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFrom:I

    iput p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mFlag:I

    return-void
.end method

.method public setPageEntity(Lcom/miui/video/framework/base/entity/PageEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/framework/base/entity/PageEntity<",
            "+",
            "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->mPageEntity:Lcom/miui/video/framework/base/entity/PageEntity;

    return-void
.end method
