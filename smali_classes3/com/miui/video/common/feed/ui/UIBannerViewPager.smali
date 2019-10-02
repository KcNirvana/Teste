.class public Lcom/miui/video/common/feed/ui/UIBannerViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "UIBannerViewPager.java"


# instance fields
.field private mDX:F

.field private mDY:F

.field private mDownPoint:Landroid/graphics/PointF;

.field private mLX:F

.field private mLY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDX:F

    iget v5, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDX:F

    iget v4, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDY:F

    iget v5, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDY:F

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLX:F

    iput v3, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLY:F

    iget v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDX:F

    iget v3, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDY:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDY:F

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mLY:F

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIBannerViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
