.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;
.super Landroid/os/Handler;
.source "GalleryVideoSaveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->setProgress(I)V

    return-void
.end method
