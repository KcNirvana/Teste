.class public Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;,
        Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;,
        Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field private mDefaultTextSize:I

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mSelectedBold:Z

.field private mSelectedTabIndex:I

.field private mSelectedTextSize:I

.field private mTabChangeClickListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field private final mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

.field private mTabReselectedListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/video/common/library/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$1;-><init>(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/library/R$dimen;->sp_14:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Lcom/miui/video/common/library/R$styleable;->TabPageIndicator:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/miui/video/common/library/R$styleable;->TabPageIndicator_tabSelectedBold:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedBold:Z

    sget v0, Lcom/miui/video/common/library/R$styleable;->TabPageIndicator_defaultTextSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mDefaultTextSize:I

    sget v0, Lcom/miui/video/common/library/R$styleable;->TabPageIndicator_selectedTextSize:I

    iget v1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mDefaultTextSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTextSize:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-direct {p2, p1, p3}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    const/4 v0, -0x1

    invoke-direct {p2, p3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabChangeClickListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabReselectedListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mMaxTabWidth:I

    return p0
.end method

.method private addTab(ILjava/lang/CharSequence;I)V
    .locals 4

    new-instance v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;-><init>(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->access$402(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;I)I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/common/library/R$dimen;->dp_3_33:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/4 p3, 0x0

    neg-int v1, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p1, p2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$TabView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, p2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$2;-><init>(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;->getIconResId(I)I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-direct {p0, v4, v5, v6}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->addTab(ILjava/lang/CharSequence;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTabIndex:I

    if-le v0, v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTabIndex:I

    :cond_4
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setFillViewport(Z)V

    iget-object v4, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v4}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    if-le v4, v0, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mMaxTabWidth:I

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_4

    if-eq v0, p1, :cond_4

    iget p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    instance-of v6, v3, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedBold:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    :cond_1
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    if-eqz v5, :cond_2

    iget v4, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mSelectedTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    :cond_2
    iget v4, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mDefaultTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->animateToTab(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabChangeClickListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabChangeClickListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabChangeClickListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mTabReselectedListener:Lcom/miui/video/common/library/widget/indicator/TabPageIndicator$OnTabReselectedListener;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/indicator/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
