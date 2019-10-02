.class public Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;
.super Landroid/widget/FrameLayout;
.source "PlayerContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationZoomRunnable;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xc8

.field private static final EXIT_CONFIRM_ALPHA:F = 0.9f

.field private static final EXIT_NONE:I = 0x0

.field private static final EXIT_ON_DRAG:I = 0x1

.field private static final EXIT_ON_SCALE:I = 0x2

.field private static final MAX_OVER_SCALE:F = 4.5f

.field private static final MAX_SCALE:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "PlayerContentView"


# instance fields
.field private mAlpha:F

.field private mContentListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

.field private mExitState:I

.field private mGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

.field private mMatrixValues:[F

.field private mScaleSnapshot:F

.field private mSuppMatrix:Landroid/graphics/Matrix;

.field private mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

.field private mTranslateXSnapshot:F

.field private mTranslateYSnapshot:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    const/16 p2, 0x9

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mMatrixValues:[F

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    iget-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    invoke-direct {p2, p1, p0, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mContentListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->isOverRight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getTranslateX()F

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTranslateYSnapshot:F

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTranslateYSnapshot:F

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getTranslateY()F

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    return p0
.end method

.method static synthetic access$1602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    return p1
.end method

.method static synthetic access$1800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->runEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->hasScaled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->isOverLeft()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->isOverTop()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mExitState:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mExitState:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mScaleSnapshot:F

    return p0
.end method

.method static synthetic access$702(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mScaleSnapshot:F

    return p1
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getScale()F

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTranslateXSnapshot:F

    return p1
.end method

.method private checkAndDisplayMatrix()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->checkMatrixBounds()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private checkMatrixBounds()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {v3, v4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v4, v4, v1

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_0
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_0

    :cond_1
    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_2

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    cmpg-float v4, v5, v2

    if-gtz v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v6, v0, v2

    goto :goto_1

    :cond_3
    iget v0, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    iget v0, v3, Landroid/graphics/RectF;->top:F

    neg-float v6, v0

    goto :goto_1

    :cond_4
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v2, v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getScale()F
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method private getTranslateX()F
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getTranslateY()F
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method private hasScaled()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOverBottom()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOverLeft()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOverRight()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOverTop()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getViewRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private runEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v15, p0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v15, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    :goto_0
    div-float/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    goto :goto_0

    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float v6, v4, v5

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v8, v0, v4

    const/4 v9, 0x0

    new-instance v14, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v10, v15, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFFFFFFFLjava/lang/Runnable;Ljava/lang/Runnable;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;)V

    move-object v1, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mExitState:I

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    const v1, 0x3f666666    # 0.9f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mScaleSnapshot:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mScaleSnapshot:F

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v4}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTranslateXSnapshot:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTranslateYSnapshot:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mContentListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onExitCancel()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mContentListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onExitConfirm()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mExitState:I

    :cond_2
    :goto_1
    return v0
.end method

.method public postEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->runEnterTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public postExitTransition(Landroid/graphics/RectF;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v15, p0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v15, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getScale()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    :goto_0
    div-float/2addr v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto :goto_0

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getTranslateX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float v7, v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getTranslateY()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v9, v0, v4

    new-instance v14, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v10, v15, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mAlpha:F

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationTransitionRunnable;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFFFFFFFLjava/lang/Runnable;Ljava/lang/Runnable;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;)V

    move-object v1, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetMatrix()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setGestureListener(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mContentListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    return-void
.end method

.method public setTransformView(Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->mTransformView:Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    return-void
.end method
