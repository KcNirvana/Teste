.class public Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;
.super Landroid/view/View;
.source "LinePageIndicator.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mGapWidth:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLineWidth:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPaintSelected:Landroid/graphics/Paint;

.field private final mPaintUnselected:Landroid/graphics/Paint;

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/video/common/library/R$attr;->vpiLinePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/common/library/R$color;->default_line_indicator_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget v2, Lcom/miui/video/common/library/R$color;->default_line_indicator_unselected_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/miui/video/common/library/R$dimen;->default_line_indicator_line_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget v4, Lcom/miui/video/common/library/R$dimen;->default_line_indicator_gap_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sget v5, Lcom/miui/video/common/library/R$dimen;->default_line_indicator_stroke_width:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget v6, Lcom/miui/video/common/library/R$bool;->default_line_indicator_centered:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sget-object v6, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_centered:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCentered:Z

    sget p3, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_lineWidth:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    sget p3, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_gapWidth:I

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    sget p3, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_strokeWidth:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setStrokeWidth(F)V

    iget-object p3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    sget v0, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_unselectedColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    sget v0, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_selectedColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget p3, Lcom/miui/video/common/library/R$styleable;->LinePageIndicator_android_background:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mTouchSlop:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method private measureWidth(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_2

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    int-to-float v2, p1

    :cond_2
    :goto_1
    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method


# virtual methods
.method public getGapWidth()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCentered:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setCurrentItem(I)V

    return-void

    :cond_2
    iget v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    iget v2, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    add-float/2addr v1, v2

    int-to-float v2, v0

    mul-float v2, v2, v1

    iget v3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-boolean v6, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCentered:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    sub-float/2addr v6, v5

    div-float/2addr v6, v7

    div-float/2addr v2, v7

    sub-float/2addr v6, v2

    add-float/2addr v4, v6

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    int-to-float v5, v2

    mul-float v5, v5, v1

    add-float v9, v4, v5

    iget v5, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    add-float v11, v9, v5

    iget v5, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    if-ne v2, v5, :cond_4

    iget-object v5, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    :goto_1
    move-object v13, v5

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    move-object v8, p1

    move v10, v3

    move v12, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->measureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iget v4, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    :cond_3
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    iget-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iput-boolean v1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mIsDragging:Z

    :cond_4
    iget-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_a

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_0

    :pswitch_4
    iget-boolean v3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    const/4 v7, 0x3

    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v8, v5, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    if-eq v0, v7, :cond_6

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_6
    return v1

    :cond_7
    iget v6, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    sub-int/2addr v3, v1

    if-ge v6, v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v5, v4

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    if-eq v0, v7, :cond_8

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_8
    return v1

    :cond_9
    iput-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLastMotionX:F

    :cond_a
    :goto_0
    return v1

    :cond_b
    :goto_1
    return v2

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

.method public setCentered(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCentered:Z

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGapWidth(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mGapWidth:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mLineWidth:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mPaintUnselected:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/indicator/LinePageIndicator;->setCurrentItem(I)V

    return-void
.end method
