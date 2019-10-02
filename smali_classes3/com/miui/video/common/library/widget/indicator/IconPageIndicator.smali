.class public Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "IconPageIndicator.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/PageIndicator;


# instance fields
.field private mIconSelector:Ljava/lang/Runnable;

.field private final mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSelectedIndex:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    new-instance p2, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    sget v0, Lcom/miui/video/common/library/R$attr;->vpiIconPageIndicatorStyle:I

    invoke-direct {p2, p1, v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method private animateToIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator$1;-><init>(Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;

    invoke-interface {v0}, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/miui/video/common/library/R$attr;->vpiIconPageIndicatorStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-interface {v0, v2}, Lcom/miui/video/common/library/widget/indicator/IconPagerAdapter;->getIconResId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v4, v3}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mSelectedIndex:I

    if-le v0, v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mSelectedIndex:I

    :cond_1
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->setCurrentItem(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mSelectedIndex:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mIconsLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->animateToIcon(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->notifyDataSetChanged()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/indicator/IconPageIndicator;->setCurrentItem(I)V

    return-void
.end method
