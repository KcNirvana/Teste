.class public Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;
.super Ljava/lang/Object;
.source "GalleryMusicDownloadBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private sha1Base16:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSha1Base16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->sha1Base16:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setSha1Base16(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->sha1Base16:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->url:Ljava/lang/String;

    return-void
.end method
