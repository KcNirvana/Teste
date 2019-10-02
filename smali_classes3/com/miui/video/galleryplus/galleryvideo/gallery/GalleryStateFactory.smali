.class public Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryStateFactory;
.super Ljava/lang/Object;
.source "GalleryStateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "mode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "preview_mode"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;-><init>(Landroid/content/Intent;)V

    return-object v0

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;-><init>(Landroid/content/Intent;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;-><init>(Landroid/content/Intent;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;-><init>(Landroid/content/Intent;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createEditState(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;I)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object v0

    :pswitch_0
    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;-><init>(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;

    invoke-direct {p1, p0}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GallerySlowState;-><init>(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryPlayerState;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
