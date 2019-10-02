.class public Lcom/miui/video/service/share/LineIndicator;
.super Landroid/widget/LinearLayout;
.source "LineIndicator.java"


# instance fields
.field private ANIM_DURATION:I

.field private mIndicatorWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintCenterX:I

.field private mPaintHeight:I

.field private mPaintRect:Landroid/graphics/RectF;

.field private mPaintWidth:I

.field private mRadius:I

.field private mScroller:Landroid/widget/Scroller;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerWidth:I

.field private scale:F

.field private totalPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/service/share/LineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/service/share/LineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintWidth:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintHeight:I

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->ANIM_DURATION:I

    const/16 p1, 0x32

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->mRadius:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/share/LineIndicator;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/service/share/LineIndicator;->scale:F

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/share/LineIndicator;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPagerWidth:I

    return p0
.end method

.method private dp2px(I)I
    .locals 2

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/miui/video/service/share/LineIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintCenterX:I

    invoke-virtual {p0}, Lcom/miui/video/service/share/LineIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintCenterX:I

    iget v2, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintWidth:I

    invoke-direct {p0, v2}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintCenterX:I

    iget v2, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintWidth:I

    invoke-direct {p0, v2}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintHeight:I

    invoke-direct {p0, v1}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/video/service/share/LineIndicator;->mRadius:I

    invoke-direct {p0, v1}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/service/share/LineIndicator;->mRadius:I

    invoke-direct {p0, v2}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/service/share/LineIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget p2, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintHeight:I

    invoke-direct {p0, p2}, Lcom/miui/video/service/share/LineIndicator;->dp2px(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPagerWidth:I

    invoke-virtual {p0}, Lcom/miui/video/service/share/LineIndicator;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->mIndicatorWidth:I

    iget p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPagerWidth:I

    if-lez p1, :cond_0

    iget p1, p0, Lcom/miui/video/service/share/LineIndicator;->mIndicatorWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPagerWidth:I

    iget v0, p0, Lcom/miui/video/service/share/LineIndicator;->totalPage:I

    add-int/lit8 v0, v0, -0x1

    mul-int p2, p2, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->scale:F

    :cond_0
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaint:Landroid/graphics/Paint;

    const v1, -0xf06601

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/miui/video/service/share/LineIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mScroller:Landroid/widget/Scroller;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mPaintRect:Landroid/graphics/RectF;

    iget-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/share/ShareAdapter;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter;->getPageCount()I

    move-result p1

    iput p1, p0, Lcom/miui/video/service/share/LineIndicator;->totalPage:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/service/share/LineIndicator;->smoothScrollTo(II)V

    iget-object p1, p0, Lcom/miui/video/service/share/LineIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/miui/video/service/share/LineIndicator$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/share/LineIndicator$1;-><init>(Lcom/miui/video/service/share/LineIndicator;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public smoothScrollTo(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/service/share/LineIndicator;->ANIM_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/service/share/LineIndicator;->smoothScrollTo(II)V

    return-void
.end method

.method public smoothScrollTo(II)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/service/share/LineIndicator;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int v4, p1, v2

    iget-object v1, p0, Lcom/miui/video/service/share/LineIndicator;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/miui/video/service/share/LineIndicator;->invalidate()V

    return-void
.end method
