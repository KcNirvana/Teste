.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$4;
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
