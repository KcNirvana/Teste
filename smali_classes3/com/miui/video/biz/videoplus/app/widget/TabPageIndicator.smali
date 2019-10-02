.class public Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "TabPageIndicator.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;,
        Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_TITLE:Ljava/lang/CharSequence;


# instance fields
.field protected dispatchClickListener:Z

.field private mBigTextSize:I

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mMaxTabWidth:I

.field private mNormalTextSize:I

.field protected mSelectedTabIndex:I

.field private final mTabClickListener:Landroid/view/View$OnClickListener;

.field protected mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

.field private mTabReselectedListener:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;

.field private mTabSelector:Ljava/lang/Runnable;

.field protected mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->dispatchClickListener:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->dp_15:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mNormalTextSize:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->dp_19:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mBigTextSize:I

    new-instance p2, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$1;-><init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    new-instance p2, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$attr;->vpiTabPageIndicatorStyle:I

    invoke-direct {p2, p1, v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabReselectedListener:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mMaxTabWidth:I

    return p0
.end method

.method private addTab(ILjava/lang/CharSequence;ILcom/miui/video/base/common/entity/ColorEntity;)V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;-><init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->access$202(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;I)I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setFocusable(Z)V

    invoke-virtual {v0, p4}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setColorEntity(Lcom/miui/video/base/common/entity/ColorEntity;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p4}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Lcom/miui/video/base/common/entity/ColorEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$3;-><init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p4}, Lcom/miui/video/base/common/entity/ColorEntity;->getIconUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setMaxLines(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    if-eqz p3, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1, p1, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->add2View(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;)V

    return-void
.end method


# virtual methods
.method protected add2View(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected animateToTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$2;-><init>(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/video/biz/videoplus/app/widget/IconPagerAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/biz/videoplus/app/widget/IconPagerAdapter;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v0, v5}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->EMPTY_TITLE:Ljava/lang/CharSequence;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v5}, Lcom/miui/video/biz/videoplus/app/widget/IconPagerAdapter;->getIconResId(I)I

    move-result v7

    invoke-interface {v1, v5}, Lcom/miui/video/biz/videoplus/app/widget/IconPagerAdapter;->getColorEntity(I)Lcom/miui/video/base/common/entity/ColorEntity;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v2

    const/4 v7, 0x0

    :goto_2
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->addTab(ILjava/lang/CharSequence;ILcom/miui/video/base/common/entity/ColorEntity;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    if-le v0, v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    :cond_4
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setCurrentItem(I)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setTabTitleColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->requestLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

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
    invoke-virtual {p0, v3}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setFillViewport(Z)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

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

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mMaxTabWidth:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mMaxTabWidth:I

    :goto_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getMeasuredWidth()I

    move-result v0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_4

    if-eq v0, p1, :cond_4

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setCurrentItem(I)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setTabTitleColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public setBigTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mBigTextSize:I

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mNormalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-eqz v5, :cond_2

    check-cast v3, Landroid/widget/TextView;

    iget v5, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mBigTextSize:I

    int-to-float v5, v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->animateToTab(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNormalTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mNormalTextSize:I

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabReselectedListener:Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$OnTabReselectedListener;

    return-void
.end method

.method public setTabTitleColor(I)V
    .locals 5

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getColorEntity()Lcom/miui/video/base/common/entity/ColorEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v2, v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/ColorEntity;->getTitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/ColorEntity;->getTitleColorP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/ColorEntity;->getTitleColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/video/base/common/entity/ColorEntity;->getTitleColorP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/video/common/library/utils/ViewUtils;->setStateTextColor(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getDefaultColos()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->notifyDataSetChanged()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->setCurrentItem(I)V

    return-void
.end method
