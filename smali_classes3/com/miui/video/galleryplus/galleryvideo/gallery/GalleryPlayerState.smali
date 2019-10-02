.class public Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;
.super Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
.source "GalleryPlayerState.java"


# instance fields
.field private leftMimeType:Ljava/lang/String;

.field private leftUrl:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private rightMimeType:Ljava/lang/String;

.field private rightUrl:Ljava/lang/String;

.field private seekWhenPrepared:J


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rect:Landroid/graphics/RectF;

    const-string v0, "uri_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isSecret()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->parsePathFromUri(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftUrl:Ljava/lang/String;

    aget-object v0, v0, v1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->isSecret()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->parsePathFromUri(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightUrl:Ljava/lang/String;

    :cond_0
    const-string v0, "mime_type_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftMimeType:Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightMimeType:Ljava/lang/String;

    :cond_1
    const-string v0, "seek_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->seekWhenPrepared:J

    const-string v0, "item_x"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "item_y"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "item_width"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "item_height"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v3, :cond_2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-direct {v2, v4, v5, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rect:Landroid/graphics/RectF;

    :cond_2
    return-void
.end method


# virtual methods
.method public getLeftMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRightMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRightUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekWhenPrepared()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->seekWhenPrepared:J

    return-wide v0
.end method

.method public setLeftMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftMimeType:Ljava/lang/String;

    return-void
.end method

.method public setLeftUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->leftUrl:Ljava/lang/String;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public setRightMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightMimeType:Ljava/lang/String;

    return-void
.end method

.method public setRightUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->rightUrl:Ljava/lang/String;

    return-void
.end method

.method public setSeekWhenPrepared(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;->seekWhenPrepared:J

    return-void
.end method
