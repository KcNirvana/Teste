.class Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;
.super Ljava/lang/Object;
.source "PlayerContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTransitionRunnable"
.end annotation


# instance fields
.field private mAlphaEnd:F

.field private mAlphaStart:F

.field private mCenterX:F

.field private mCenterY:F

.field private mEndCallback:Ljava/lang/Runnable;

.field private mHasStarted:Z

.field private mScaleEnd:F

.field private mScaleStart:F

.field private mStartCallback:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mTranslateXEnd:F

.field private mTranslateXStart:F

.field private mTranslateYEnd:F

.field private mTranslateYStart:F

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;


# direct methods
.method private constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFFFFFFFLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mScaleStart:F

    iput p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mScaleEnd:F

    iput p4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mCenterX:F

    iput p5, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mCenterY:F

    iput p6, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateXStart:F

    iput p7, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateXEnd:F

    iput p8, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateYStart:F

    iput p9, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateYEnd:F

    iput p10, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mAlphaStart:F

    iput p11, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mAlphaEnd:F

    iput-object p12, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mStartCallback:Ljava/lang/Runnable;

    iput-object p13, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mEndCallback:Ljava/lang/Runnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFFFFFFFLjava/lang/Runnable;Ljava/lang/Runnable;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFFFFFFFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private interpolate()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$2100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mHasStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mHasStarted:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mStartCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->interpolate()F

    move-result v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mScaleStart:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mScaleEnd:F

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mScaleStart:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateXStart:F

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateXEnd:F

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateXStart:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateYStart:F

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateYEnd:F

    iget v5, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mTranslateYStart:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v4}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mCenterX:F

    iget v6, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mCenterY:F

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mAlphaStart:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mAlphaEnd:F

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mAlphaStart:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onAlphaChanged(F)V

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-virtual {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mEndCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;->mEndCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method
