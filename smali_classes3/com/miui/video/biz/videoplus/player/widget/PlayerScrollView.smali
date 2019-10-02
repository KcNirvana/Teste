.class public Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;
.super Landroid/widget/ScrollView;
.source "PlayerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final INFLEXION:F = 0.35f

.field private static final TAG:Ljava/lang/String; = "PlayerScrollView"


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

.field private mDetailHeight:I

.field private mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

.field private mFlingFriction:F

.field private mIsScrollDirectionUp:Z

.field private mIsScrollEnabled:Z

.field private mIsScrolling:Z

.field private mLastTouchY:I

.field private mLimitScrollY:I

.field private mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

.field private mMediaHeight:I

.field private mMediaWidth:I

.field private mPhysicalCoeff:F

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

.field private mStickScrollY:I

.field private final mStickyTopHeight:I

.field private mTotalHeight:I

.field private mTouchSlop:I

.field private mTranslationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->DECELERATION_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-direct {p2}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollEnabled:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mFlingFriction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    const v1, 0x43c10b3d

    mul-float v0, v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mPhysicalCoeff:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->player_detail_sticky_top_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickyTopHeight:I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    const/4 p3, -0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTranslationY:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollDirectionUp:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    return p0
.end method

.method private getActiveY(Landroid/view/MotionEvent;)I
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int p1, v0

    return p1

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mFlingFriction:F

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mPhysicalCoeff:F

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineDecelerationByDistance(D)D
    .locals 4

    sget v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->DECELERATION_RATE:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mFlingFriction:F

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mPhysicalCoeff:F

    mul-float v2, v2, v3

    float-to-double v2, v2

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v0, v0, p1

    sget p1, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->DECELERATION_RATE:F

    float-to-double p1, p1

    div-double/2addr v0, p1

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getSplineDeceleration(I)D

    move-result-wide v0

    sget p1, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mFlingFriction:F

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mPhysicalCoeff:F

    mul-float p1, p1, v4

    float-to-double v4, p1

    sget p1, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->DECELERATION_RATE:F

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    return-wide v4
.end method

.method private getVelocityByDistance(D)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getSplineDecelerationByDistance(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mFlingFriction:F

    float-to-double v0, v0

    mul-double p1, p1, v0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mPhysicalCoeff:F

    float-to-double v0, v0

    mul-double p1, p1, v0

    const-wide v0, 0x3fd6666660000000L    # 0.3499999940395355

    div-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method private onScrollBegin()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;->onScrollBegin()V

    :cond_0
    return-void
.end method

.method private onScrollEnd()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$3;-><init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;->onScrollEnd()V

    :cond_1
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLimitScrollY:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLimitScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->scrollTo(II)V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    return-void
.end method

.method public fling(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLimitScrollY:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getSplineFlingDistance(I)D

    move-result-wide v0

    if-lez p1, :cond_1

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLimitScrollY:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getVelocityByDistance(D)I

    move-result p1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result v3

    int-to-double v4, v2

    cmpl-double v2, v0, v4

    if-lez v2, :cond_2

    int-to-double v2, v3

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getVelocityByDistance(D)I

    move-result p1

    neg-int p1, p1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailHeight:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {v1, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->measure(II)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailHeight:I

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaWidth:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaHeight:I

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickyTopHeight:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailHeight:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int v3, p2, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->measure(II)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, p1, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->measure(II)V

    invoke-virtual {p0, v0, p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaWidth:I

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->setVideoSize(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {p1, v0, p2}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->doMeasure(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMeasureHelper:Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/MeasureHelper;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTranslationY:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->getMeasuredHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTotalHeight:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTranslationY:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLimitScrollY:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTranslationY:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickyTopHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mStickScrollY:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->scrollTo(II)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    sub-int p1, p2, p4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollDirectionUp:Z

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollDirectionUp:Z

    const-wide/16 v0, 0x1f4

    if-eqz p1, :cond_1

    if-nez p4, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$1;-><init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollDirectionUp:Z

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$2;-><init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    if-ne v3, v4, :cond_2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getActiveY(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLastTouchY:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getActiveY(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLastTouchY:I

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getActiveY(Landroid/view/MotionEvent;)I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLastTouchY:I

    sub-int v1, v0, v1

    iget-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrolling:Z

    if-nez v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mTouchSlop:I

    if-le v1, v3, :cond_3

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrolling:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->onScrollBegin()V

    :cond_3
    iget-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrolling:Z

    if-eqz v1, :cond_5

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLastTouchY:I

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrolling:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->onScrollEnd()V

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrolling:Z

    :cond_4
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    goto :goto_0

    :pswitch_5
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->getActiveY(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mLastTouchY:I

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mContentView:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public setDetailView(Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mRootLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mDetailView:Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public setMediaSize(II)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mMediaHeight:I

    return-void
.end method

.method public setOnPlayerScrollListener(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mScrollListener:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView$OnPlayerScrollListener;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;->mIsScrollEnabled:Z

    return-void
.end method
