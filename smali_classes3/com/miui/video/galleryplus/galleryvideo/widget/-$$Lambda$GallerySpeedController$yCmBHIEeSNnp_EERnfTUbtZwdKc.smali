.class public final synthetic Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$yCmBHIEeSNnp_EERnfTUbtZwdKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$yCmBHIEeSNnp_EERnfTUbtZwdKc;->f$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$yCmBHIEeSNnp_EERnfTUbtZwdKc;->f$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;

    invoke-static {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->lambda$notifyRangeChangeEnd$19(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;Landroid/animation/ValueAnimator;)V

    return-void
.end method
