.class public abstract Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
.super Ljava/lang/Object;
.source "GalleryState.java"


# instance fields
.field private actionBarVisible:Z

.field private height:I

.field private isPreview:Z

.field private isSecret:Z

.field private location:Ljava/lang/String;

.field private startWhenLocked:Z

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->title:Ljava/lang/String;

    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->subtitle:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->location:Ljava/lang/String;

    const-string v0, "action_bar_visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->actionBarVisible:Z

    const-string v0, "StartActivityWhenLocked"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->startWhenLocked:Z

    const-string v0, "com.miui.video.extra.is_secret"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isSecret:Z

    const-string v0, "preview_mode"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isPreview:Z

    const-string v0, "menu_height"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->height:I

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isSecret:Z

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->parsePathFromUri(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isPreview:Z

    invoke-direct {p1, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->title:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->subtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->subtitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->location:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->actionBarVisible:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->actionBarVisible:Z

    iget-boolean v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->startWhenLocked:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->startWhenLocked:Z

    iget-boolean v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isSecret:Z

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isSecret:Z

    iget v0, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->height:I

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->height:I

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    invoke-direct {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;-><init>(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    return-void
.end method

.method public static parsePathFromUri(Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/video/base/utils/AndroidUtils;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->height:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    return-object v0
.end method

.method public isActionBarVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->actionBarVisible:Z

    return v0
.end method

.method public isSecret()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->isSecret:Z

    return v0
.end method

.method public isStartWhenLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->startWhenLocked:Z

    return v0
.end method

.method public setActionBarVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->actionBarVisible:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->height:I

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->location:Ljava/lang/String;

    return-void
.end method

.method public setStartWhenLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->startWhenLocked:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->url:Ljava/lang/String;

    return-void
.end method

.method public setVideoInfo(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;->videoInfo:Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    return-void
.end method
