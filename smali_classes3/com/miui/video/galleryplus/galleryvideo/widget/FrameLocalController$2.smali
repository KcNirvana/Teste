.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->initData(JI)V
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
