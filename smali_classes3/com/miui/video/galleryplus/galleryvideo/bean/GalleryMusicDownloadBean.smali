.class public Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;
.super Ljava/lang/Object;
.source "GalleryMusicDownloadBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

.field private description:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private retriable:Z

.field private ts:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->code:I

    return v0
.end method

.method public getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->data:Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->ts:J

    return-wide v0
.end method

.method public isRetriable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->retriable:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->code:I

    return-void
.end method

.method public setData(Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->data:Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->result:Ljava/lang/String;

    return-void
.end method

.method public setRetriable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->retriable:Z

    return-void
.end method

.method public setTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->ts:J

    return-void
.end method
