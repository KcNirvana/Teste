.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GalleryPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryPreparedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;


# direct methods
.method private constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "GalleryPlayerFragment"

    const-string p2, "onReceive: showGallery"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->removeUIMessages(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$GalleryPreparedReceiver;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/16 p2, 0x65

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->runUIMessage(IJ)V

    return-void
.end method
