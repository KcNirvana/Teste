.class public Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;
.super Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;
.source "CustomTabPageIndicator.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/ICollapsedListener;


# instance fields
.field private focusTextSize:I

.field private mCurrentScrollState:I

.field private mIndicatorColors:[Landroid/content/res/ColorStateList;

.field private mTypes:[Landroid/graphics/Typeface;

.field private normalTextSize:I

.field private sizeChangeStep:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mCurrentScrollState:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->sp_15:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$dimen;->sp_19:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    sub-int/2addr p2, v0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->initIndicatorTextColors()V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->initIndicatorTextFonts(Landroid/content/Context;)V

    return-void
.end method

.method private initIndicatorTextColors()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$xml;->selector_plus_tab_expand_textcolors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$xml;->selector_plus_tab_collapsed_textcolors:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    aput-object v1, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initIndicatorTextFonts(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    const-string v1, "normal"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "fonts/DIN_Bold.otf"

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method protected add2View(Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->onPageScrollStateChanged(I)V

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mCurrentScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator;->onPageSelected(I)V

    return-void
.end method

.method public setAppBarLayoutState(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)V
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setTabTitleColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mIndicatorColors:[Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->setTabTitleColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_2

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->animateToTab(I)V

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

.method public setDispatchClickListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->dispatchClickListener:Z

    return-void
.end method

.method public setTabTitleColor(I)V
    .locals 6

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-ne v2, p1, :cond_0

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTypes:[Landroid/graphics/Typeface;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabTitleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    invoke-virtual {v1, p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTextSizeUpdate(IF)V
    .locals 7

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mCurrentScrollState:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_0

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    cmpl-float v0, p2, v2

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_3

    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    int-to-double v2, v0

    iget-wide v5, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    sub-float/2addr v1, p2

    float-to-double v0, v1

    mul-double v5, v5, v0

    add-double/2addr v2, v5

    double-to-float p2, v2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextSize()F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    int-to-double v2, p2

    iget-wide v5, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    mul-double v5, v5, v0

    sub-double/2addr v2, v5

    double-to-float p2, v2

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextSize()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    if-ne p1, v0, :cond_6

    cmpl-float v0, p2, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    float-to-double v5, p2

    mul-double v2, v2, v5

    add-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextSize()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    mul-double v2, v2, v5

    sub-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->getTextSize()F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mCurrentScrollState:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_5

    cmpl-float v0, p2, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    int-to-double v2, v0

    iget-wide v5, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    sub-float/2addr v1, p2

    float-to-double v0, v1

    mul-double v5, v5, v0

    add-double/2addr v2, v5

    double-to-float p2, v2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    int-to-double v2, p2

    iget-wide v5, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    mul-double v5, v5, v0

    sub-double/2addr v2, v5

    double-to-float p2, v2

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    if-ne p1, v0, :cond_6

    cmpl-float v0, p2, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->normalTextSize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    float-to-double v5, p2

    mul-double v2, v2, v5

    add-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mTabLayout:Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->mSelectedTabIndex:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/widget/indicator/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->focusTextSize:I

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/app/widget/CustomTabPageIndicator;->sizeChangeStep:D

    mul-double v2, v2, v5

    sub-double/2addr v0, v2

    double-to-float p2, v0

    invoke-virtual {p1, v4, p2}, Lcom/miui/video/biz/videoplus/app/widget/TabPageIndicator$TabView;->setTextSize(IF)V

    :cond_6
    :goto_0
    return-void
.end method
