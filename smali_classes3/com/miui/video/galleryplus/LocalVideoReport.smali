.class public Lcom/miui/video/galleryplus/LocalVideoReport;
.super Ljava/lang/Object;
.source "LocalVideoReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoCancel;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMatchLocalMusic;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSelectName;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMusicTab;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoShowEdit;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoImmersion;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSlide;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPullBack;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayPause;,
        Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;
    }
.end annotation


# static fields
.field private static final DIVERSION_MODULE:Ljava/lang/String; = "galleryplus_diversion"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportGalleryVideoPause()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayPause;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayPause;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayPause;->reportEvent()Z

    return-void
.end method

.method public static reportGalleryVideoPlay(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPlayStart;->reportEvent()Z

    return-void
.end method

.method public static reportImmersionEvent()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoImmersion;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoImmersion;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoImmersion;->reportEvent()Z

    return-void
.end method

.method public static reportMatchLocalMusicEvent(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMatchLocalMusic;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMatchLocalMusic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMatchLocalMusic;->reportEvent()Z

    return-void
.end method

.method public static reportMusicTabClick()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMusicTab;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMusicTab;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoMusicTab;->reportEvent()Z

    return-void
.end method

.method public static reportPullBackEvent()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPullBack;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPullBack;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoPullBack;->reportEvent()Z

    return-void
.end method

.method public static reportSelectMusicName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSelectName;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSelectName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSelectName;->reportEvent()Z

    return-void
.end method

.method public static reportShowEditClick(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoShowEdit;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoShowEdit;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoShowEdit;->reportEvent()Z

    return-void
.end method

.method public static reportSlideEvent()V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSlide;

    invoke-direct {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSlide;-><init>()V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSlide;->reportEvent()Z

    return-void
.end method

.method public static reportVideoCancel(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoCancel;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoCancel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoCancel;->reportEvent()Z

    return-void
.end method

.method public static reportVideoSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/LocalVideoReport$GalleryVideoSave;->reportEvent()Z

    return-void
.end method
