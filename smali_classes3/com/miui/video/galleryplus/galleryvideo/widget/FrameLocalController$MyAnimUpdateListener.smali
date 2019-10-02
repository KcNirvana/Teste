.class Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;
.super Ljava/lang/Object;
.source "FrameLocalController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAnimUpdateListener"
.end annotation


# instance fields
.field private mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;->mControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController$MyAnimUpdateListener;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1002(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)V

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)J

    move-result-wide v3

    mul-long v1, v1, v3

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;)I

    move-result p1

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;->access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/FrameLocalController;I)I

    :cond_1
    return-void
.end method
