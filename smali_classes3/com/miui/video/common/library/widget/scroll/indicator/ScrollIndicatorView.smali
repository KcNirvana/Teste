.class public Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;,
        Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;
    }
.end annotation


# instance fields
.field private customShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

.field private defaultShadowPaint:Landroid/graphics/Paint;

.field private fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

.field private isPinnedTabView:Z

.field private mActionDownHappened:Z

.field private mTabSelector:Ljava/lang/Runnable;

.field private pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

.field private pinnedTabView:Landroid/view/View;

.field private positionOffset:F

.field private final proxyOnItemSelectListener:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;

.field private shadowWidth:I

.field private state:I

.field private unScrollPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->isPinnedTabView:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->state:I

    new-instance v1, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)V

    iput-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    new-instance v2, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-direct {v2, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    const v1, 0x33aaaaaa

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    invoke-direct {p0, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dipToPix(F)I

    move-result p2

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->shadowWidth:I

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->shadowWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p2, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    new-instance p2, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;

    invoke-direct {p2, p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$1;)V

    iput-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setOnItemSelectListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->state:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->animateToTab(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->positionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->isPinnedTabView:Z

    return p0
.end method

.method static synthetic access$702(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    return-object p1
.end method

.method private animateToTab(I)V
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$2;-><init>(Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private dipToPix(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private drawScrollBar(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getScrollBar()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    sget-object v2, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$3;->$SwitchMap$com$miui$video$common$library$widget$scroll$indicator$slidebar$ScrollBar$Gravity:[I

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getHeight()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v2, v4

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getHeight()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    :goto_0
    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getWidth(I)I

    move-result v4

    iget-object v5, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getHeight(I)I

    move-result v5

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v6, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getScrollBar()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    sget-object v4, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    if-ne v3, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->drawScrollBar(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;->getGravity()Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v3, Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->drawScrollBar(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->shadowWidth:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->shadowWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dipToPix(F)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dipToPix(F)I

    move-result v2

    int-to-float v8, v2

    int-to-float v9, v0

    iget-object v10, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->defaultShadowPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mActionDownHappened:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mActionDownHappened:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->invalidate(Landroid/graphics/Rect;)V

    iput-boolean v3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mActionDownHappened:Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getOnIndicatorItemClickListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getOnIndicatorItemClickListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->getOnItemSelectedListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getOnTransitionListener()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;

    move-result-object v0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public isItemClickable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isItemClickable()Z

    move-result v0

    return v0
.end method

.method public isSplitAuto()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->isSplitAuto()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    iget p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    iget p3, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    invoke-virtual {p1, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->scrollTo(II)V

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->state:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->positionOffset:F

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float v1, v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->scrollTo(II)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->animateToTab(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->unRegistDataSetObserver(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setAdapter(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$IndicatorAdapter;->registDataSetObserver(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->dataSetObserver:Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;

    invoke-interface {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$DataSetObserver;->onChange()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->state:I

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->animateToTab(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->scrollTo(II)V

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->unScrollPosition:I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setItemClickable(Z)V

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setOnIndicatorItemClickListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnIndicatorItemClickListener;)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->proxyOnItemSelectListener:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$ProxyOnItemSelectListener;->setOnItemSelectedListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnTransitionListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setOnTransitionListener(Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;)V

    return-void
.end method

.method public setPinnedShadow(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setPinnedShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setPinnedShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->customShadowDrawable:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->shadowWidth:I

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBgColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabBgId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabView(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->isPinnedTabView:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->pinnedTabView:Landroid/view/View;

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setScrollBar(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setScrollBar(Lcom/miui/video/common/library/widget/scroll/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView;->fixedIndicatorView:Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitAuto(Z)V

    return-void
.end method
