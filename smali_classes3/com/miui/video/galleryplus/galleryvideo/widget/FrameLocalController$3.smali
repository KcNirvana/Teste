.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/galleryplus/media/GalleryMediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1700(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1800(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$900(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$3;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1800(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
