.class Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;
.super Ljava/lang/Object;
.source "FrameLocalPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->access$000(Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/FrameLocalPlayActivity;->showFragment(Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryState;)V

    return-void
.end method
