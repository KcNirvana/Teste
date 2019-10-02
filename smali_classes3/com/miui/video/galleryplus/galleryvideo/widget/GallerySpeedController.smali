.class public Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;
.super Landroid/view/View;
.source "GallerySpeedController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x168L

.field private static final CURSOR_FREE_CORNER:F = 2.0f

.field private static final CURSOR_FREE_FOCUS_HEIGHT:F = 55.0f

.field private static final CURSOR_FREE_HEIGHT:F = 26.0f

.field private static final CURSOR_FREE_WIDTH:F = 4.0f

.field private static final CURSOR_TOUCH_RANGE:I = 0x3c

.field private static final DASH_FIXED_HEIGHT:F = 10.0f

.field private static final DASH_FIXED_NORMAL_SPACE:F = 6.0f

.field private static final DASH_FIXED_SLOW_SPACE:F = 14.0f

.field private static final DASH_FIXED_WIDTH:F = 2.0f

.field private static final DASH_FREE_FOCUS_HEIGHT:F = 15.0f

.field private static final DASH_FREE_HEIGHT:F = 6.0f

.field private static final DASH_FREE_NORMAL_SPACE:F = 5.0f

.field private static final DASH_FREE_SLOW_SPACE:F = 13.0f

.field private static final DASH_FREE_WIDTH:F = 3.0f

.field public static final DRAGGING_STATE_IDLE:I = 0x0

.field public static final DRAGGING_STATE_LEFT:I = 0x1

.field public static final DRAGGING_STATE_RIGHT:I = 0x2

.field public static final DRAGGING_STATE_UNSPECIFIC:I = 0x3

.field private static final MAX_CURSOR_PERCENT:I = 0x64

.field public static final RANGE_TYPE_FIXED:I = 0x1

.field public static final RANGE_TYPE_FREE:I


# instance fields
.field private mCursorFocusAnim:Landroid/animation/ValueAnimator;

.field private mCursorFocusAnimProgress:F

.field private mCursorPaint:Landroid/graphics/Paint;

.field private mDashPaint:Landroid/graphics/Paint;

.field private mDraggingState:I

.field private mFixedRange:F

.field private mIsCursorVisible:Z

.field private mIsTouchEnabled:Z

.field private mLastMotionX:I

.field private mLeftCursorPercent:F

.field private mLeftNormalDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

.field private mPath:Landroid/graphics/Path;

.field private mRangeType:I

.field private mRightCursorPercent:F

.field private mRightNormalDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mSlowDashPathEffect:Landroid/graphics/DashPathEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    const/high16 p1, 0x41c80000    # 25.0f

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    const/high16 p1, 0x42960000    # 75.0f

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsCursorVisible:Z

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsTouchEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->initView()V

    return-void
.end method

.method private computeCursorPercent(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private getLeftCursorCenter()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getLeftCursorLeft()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getLeftCursorRight()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getRightCursorCenter()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorRight()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getRightCursorLeft()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRightCursorRight()I
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$color;->gallery_speed_cursor_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/galleryplus/R$color;->gallery_speed_dash_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->setRangeType(IF)V

    return-void
.end method

.method private isTouchInRangeOfLeftCursor(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorCenter()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTouchInRangeOfRightCursor(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorCenter()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$notifyRangeChangeEnd$19(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    return-void
.end method

.method public static synthetic lambda$notifyRangeChangeStart$18(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    return-void
.end method

.method private notifyRangeChange()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;->onSpeedRangeChange(IFF)V

    :cond_0
    return-void
.end method

.method private notifyRangeChangeEnd()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    aput v4, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$yCmBHIEeSNnp_EERnfTUbtZwdKc;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$yCmBHIEeSNnp_EERnfTUbtZwdKc;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;

    invoke-direct {v2, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;->onSpeedRangeChangeEnd(I)V

    :cond_2
    return-void
.end method

.method private notifyRangeChangeStart()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    :cond_0
    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    aput v4, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$7OaHJ7JP3p8mQcFism9XZTLhG40;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/-$$Lambda$GallerySpeedController$7OaHJ7JP3p8mQcFism9XZTLhG40;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;

    invoke-direct {v2, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;->onSpeedRangeChangeStart(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLeftCursor()F
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    return v0
.end method

.method public getRightCursor()F
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41100000    # 9.0f

    iget v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorCenter()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mSlowDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorCenter()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorCenter()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorCenter()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsCursorVisible:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x41d00000    # 26.0f

    const/high16 v1, 0x41e80000    # 29.0f

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorFocusAnimProgress:F

    mul-float v2, v2, v1

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorLeft()I

    move-result v2

    int-to-float v6, v2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorRight()I

    move-result v2

    int-to-float v8, v2

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v12, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v0

    move v9, v1

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorLeft()I

    move-result v2

    int-to-float v6, v2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorRight()I

    move-result v2

    int-to-float v8, v2

    iget-object v12, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsTouchEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_1
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    if-ge v0, p1, :cond_1

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    goto/16 :goto_4

    :cond_1
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    if-le v0, p1, :cond_8

    iput v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getLeftCursorLeft()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->computeCursorPercent(I)F

    move-result p1

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    if-nez v2, :cond_3

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    :goto_0
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChange()V

    goto :goto_4

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->getRightCursorLeft()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->computeCursorPercent(I)F

    move-result p1

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    if-nez v2, :cond_6

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float v2, v3, v2

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_7

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    :goto_2
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    add-float/2addr p1, v2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    :goto_3
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChange()V

    :cond_8
    :goto_4
    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    goto :goto_6

    :pswitch_4
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChangeEnd()V

    iput v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    :cond_9
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    goto :goto_6

    :pswitch_5
    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->isTouchInRangeOfLeftCursor(I)Z

    move-result p1

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->isTouchInRangeOfRightCursor(I)Z

    move-result v4

    if-eqz p1, :cond_a

    if-eqz v4, :cond_a

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChangeStart()V

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChangeStart()V

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    iput v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->notifyRangeChangeStart()V

    goto :goto_5

    :cond_c
    iput v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDraggingState:I

    :goto_5
    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLastMotionX:I

    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCursorRange(FF)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    move p2, p1

    :cond_0
    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    if-nez v1, :cond_1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    sub-float p2, v0, p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsCursorVisible:Z

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    return-void
.end method

.method public setOnSpeedRangeChangedListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$OnSpeedRangeChangedListener;

    return-void
.end method

.method public setRangeType(IF)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-direct {p1, v3, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mSlowDashPathEffect:Landroid/graphics/DashPathEffect;

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-direct {p1, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    const/high16 v0, 0x42c80000    # 100.0f

    sub-float v1, v0, p2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftCursorPercent:F

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightCursorPercent:F

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array p2, v2, [F

    fill-array-data p2, :array_3

    invoke-direct {p1, p2, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mLeftNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array p2, v2, [F

    fill-array-data p2, :array_4

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, p2, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mSlowDashPathEffect:Landroid/graphics/DashPathEffect;

    new-instance p1, Landroid/graphics/DashPathEffect;

    new-array p2, v2, [F

    fill-array-data p2, :array_5

    invoke-direct {p1, p2, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRightNormalDashPathEffect:Landroid/graphics/DashPathEffect;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mDashPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mRangeType:I

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mFixedRange:F

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x41600000    # 14.0f
    .end array-data

    :array_2
    .array-data 4
        0x40000000    # 2.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_3
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_4
    .array-data 4
        0x40400000    # 3.0f
        0x41500000    # 13.0f
    .end array-data

    :array_5
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;->mIsTouchEnabled:Z

    return-void
.end method
