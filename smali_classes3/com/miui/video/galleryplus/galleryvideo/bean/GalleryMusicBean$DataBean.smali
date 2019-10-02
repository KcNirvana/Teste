.class public Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;
.super Ljava/lang/Object;
.source "GalleryMusicBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;
    }
.end annotation


# instance fields
.field private galleryResourceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastPage:Z

.field private syncToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGalleryResourceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->galleryResourceInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSyncToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->syncToken:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->lastPage:Z

    return v0
.end method

.method public setGalleryResourceInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean$GalleryResourceInfoListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->galleryResourceInfoList:Ljava/util/List;

    return-void
.end method

.method public setLastPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->lastPage:Z

    return-void
.end method

.method public setSyncToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicBean$DataBean;->syncToken:Ljava/lang/String;

    return-void
.end method
