.class public Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;
.super Landroid/view/View;
.source "TitlePageIndicator.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/indicator/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;,
        Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;,
        Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;,
        Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;
    }
.end annotation


# static fields
.field private static final BOLD_FADE_PERCENTAGE:F = 0.05f

.field private static final EMPTY_TITLE:Ljava/lang/String; = ""

.field private static final INVALID_POINTER:I = -0x1

.field private static final SELECTION_FADE_PERCENTAGE:F = 0.25f


# instance fields
.field private mActivePointerId:I

.field private mBoldText:Z

.field private final mBounds:Landroid/graphics/Rect;

.field private mCenterItemClickListener:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;

.field private mClipPadding:F

.field private mColorSelected:I

.field private mColorText:I

.field private mCurrentPage:I

.field private mFooterIndicatorHeight:F

.field private mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

.field private mFooterIndicatorUnderlinePadding:F

.field private mFooterLineHeight:F

.field private mFooterPadding:F

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mLinePosition:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPageOffset:F

.field private final mPaintFooterIndicator:Landroid/graphics/Paint;

.field private final mPaintFooterLine:Landroid/graphics/Paint;

.field private final mPaintText:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mScrollState:I

.field private mTitlePadding:F

.field private mTopPadding:F

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/miui/video/common/library/R$attr;->vpiTitlePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/library/R$color;->default_title_indicator_footer_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_footer_line_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget v4, Lcom/miui/video/common/library/R$integer;->default_title_indicator_footer_indicator_style:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sget v5, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_footer_indicator_height:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sget v6, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_footer_indicator_underline_padding:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sget v7, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_footer_padding:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sget v8, Lcom/miui/video/common/library/R$integer;->default_title_indicator_line_position:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sget v9, Lcom/miui/video/common/library/R$color;->default_title_indicator_selected_color:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget v10, Lcom/miui/video/common/library/R$bool;->default_title_indicator_selected_bold:I

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    sget v11, Lcom/miui/video/common/library/R$color;->default_title_indicator_text_color:I

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    sget v12, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_text_size:I

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    sget v13, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_title_padding:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    sget v14, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_clip_padding:I

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    sget v15, Lcom/miui/video/common/library/R$dimen;->default_title_indicator_top_padding:I

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget-object v15, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator:[I

    move/from16 v16, v2

    const/4 v2, 0x0

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v17, v12

    move-object/from16 v12, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual {v12, v10, v15, v11, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v10, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerLineHeight:I

    invoke-virtual {v2, v10, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerIndicatorStyle:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;->fromValue(I)Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerIndicatorHeight:I

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerIndicatorUnderlinePadding:I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerPadding:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterPadding:F

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_linePosition:I

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->fromValue(I)Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLinePosition:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_topPadding:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_titlePadding:I

    invoke-virtual {v2, v1, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_clipPadding:I

    invoke-virtual {v2, v1, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_selectedColor:I

    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorSelected:I

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_android_textColor:I

    move/from16 v3, v19

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorText:I

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_selectedBold:I

    move/from16 v3, v18

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBoldText:Z

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_android_textSize:I

    move/from16 v3, v17

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v3, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_footerColor:I

    move/from16 v4, v16

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/miui/video/common/library/R$styleable;->TitlePageIndicator_android_background:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTouchSlop:I

    return-void
.end method

.method private calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-direct {p0, v5, p1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->calcBounds(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v9, v3

    int-to-float v10, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    sub-int v10, v5, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v10, v11

    int-to-float v11, v2

    mul-float v10, v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v7

    iput v9, v6, Landroid/graphics/Rect;->right:I

    iput v4, v6, Landroid/graphics/Rect;->top:I

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private clipViewOnTheLeft(Landroid/graphics/Rect;FI)V
    .locals 1

    int-to-float p3, p3

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget p3, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private clipViewOnTheRight(Landroid/graphics/Rect;FI)V
    .locals 1

    int-to-float p3, p3

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getClipPadding()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    return v0
.end method

.method public getFooterColor()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFooterIndicatorHeight()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    return v0
.end method

.method public getFooterIndicatorPadding()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterPadding:F

    return v0
.end method

.method public getFooterIndicatorStyle()Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public getFooterLineHeight()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    return v0
.end method

.method public getLinePosition()Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLinePosition:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorSelected:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorText:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTitlePadding()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    return v0
.end method

.method public getTopPadding()F
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBoldText:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    :cond_2
    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->calculateAllBounds(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v12, 0x1

    if-lt v1, v11, :cond_3

    sub-int/2addr v11, v12

    invoke-virtual {v0, v11}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void

    :cond_3
    add-int/lit8 v1, v9, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v2, v13

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getLeft()I

    move-result v15

    int-to-float v2, v15

    iget v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    add-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getHeight()I

    move-result v16

    add-int v6, v15, v7

    int-to-float v3, v6

    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    iget v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPageOffset:F

    move/from16 v17, v14

    float-to-double v13, v5

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v13, v18

    if-gtz v5, :cond_4

    iget v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPageOffset:F

    :goto_0
    move v13, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    iget v13, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPageOffset:F

    sub-float/2addr v5, v13

    goto :goto_0

    :goto_1
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v14, v5, v4

    const/16 v18, 0x0

    if-gtz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    const v19, 0x3d4ccccd    # 0.05f

    cmpg-float v19, v5, v19

    if-gtz v19, :cond_6

    const/16 v19, 0x1

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    :goto_3
    sub-float v5, v4, v5

    div-float v20, v5, v4

    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v12

    int-to-float v5, v5

    iget v12, v4, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    cmpg-float v12, v12, v2

    if-gez v12, :cond_7

    invoke-direct {v0, v4, v5, v15}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    :cond_7
    iget v12, v4, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    cmpl-float v12, v12, v3

    if-lez v12, :cond_8

    invoke-direct {v0, v4, v5, v6}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    :cond_8
    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    if-lez v4, :cond_b

    iget v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_4
    if-ltz v4, :cond_b

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v12, v5, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    cmpg-float v12, v12, v2

    if-gez v12, :cond_9

    iget v12, v5, Landroid/graphics/Rect;->right:I

    move/from16 v22, v2

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v2

    int-to-float v2, v12

    invoke-direct {v0, v5, v2, v15}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->clipViewOnTheLeft(Landroid/graphics/Rect;FI)V

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    move/from16 v23, v7

    iget v7, v5, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    int-to-float v2, v2

    iget v7, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v12

    iput v2, v5, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_9
    move/from16 v22, v2

    move/from16 v23, v7

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, -0x1

    move/from16 v2, v22

    move/from16 v7, v23

    move-object/from16 v8, p1

    goto :goto_4

    :cond_b
    move/from16 v23, v7

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    if-ge v2, v1, :cond_d

    iget v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    const/4 v8, 0x1

    add-int/2addr v1, v8

    :goto_6
    if-ge v1, v9, :cond_e

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_c

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v5, v4

    invoke-direct {v0, v2, v5, v6}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->clipViewOnTheRight(Landroid/graphics/Rect;FI)V

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v12, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v7, v12

    iget v12, v5, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    cmpg-float v7, v7, v12

    if-gez v7, :cond_c

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v7, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iput v5, v2, Landroid/graphics/Rect;->right:I

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    const/4 v8, 0x1

    :cond_e
    iget v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorText:I

    ushr-int/lit8 v12, v1, 0x18

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v9, :cond_17

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-le v1, v15, :cond_f

    iget v1, v5, Landroid/graphics/Rect;->left:I

    if-lt v1, v6, :cond_10

    :cond_f
    iget v1, v5, Landroid/graphics/Rect;->right:I

    if-le v1, v15, :cond_15

    iget v1, v5, Landroid/graphics/Rect;->right:I

    if-ge v1, v6, :cond_15

    :cond_10
    if-ne v7, v13, :cond_11

    const/16 v21, 0x1

    goto :goto_8

    :cond_11
    const/16 v21, 0x0

    :goto_8
    invoke-direct {v0, v7}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v22

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    if-eqz v21, :cond_12

    if-eqz v19, :cond_12

    iget-boolean v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBoldText:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v21, :cond_13

    if-eqz v14, :cond_13

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    int-to-float v2, v12

    mul-float v2, v2, v20

    float-to-int v2, v2

    sub-int v2, v12, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_13
    add-int/lit8 v1, v11, -0x1

    if-ge v7, v1, :cond_14

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    :cond_14
    const/4 v3, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v1, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v8, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr v8, v1

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move/from16 v25, v2

    move-object/from16 v2, v22

    move-object/from16 v26, v5

    move/from16 v5, v25

    move/from16 v25, v6

    move v6, v8

    move/from16 v8, v23

    move/from16 v23, v7

    move-object/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v21, :cond_16

    if-eqz v14, :cond_16

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorSelected:I

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    mul-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v1, v26

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    add-float v6, v1, v2

    iget-object v7, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_15
    move/from16 v25, v6

    move/from16 v8, v23

    move/from16 v23, v7

    :cond_16
    :goto_a
    add-int/lit8 v7, v23, 0x1

    move/from16 v23, v8

    move/from16 v6, v25

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_17
    move/from16 v8, v23

    iget v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    iget v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    iget-object v3, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLinePosition:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    sget-object v4, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;->Top:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    if-ne v3, v4, :cond_18

    neg-float v1, v1

    neg-float v2, v2

    move v3, v2

    move v2, v1

    const/4 v1, 0x0

    goto :goto_b

    :cond_18
    move v3, v2

    move v2, v1

    move/from16 v1, v16

    :goto_b
    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    sub-float v6, v1, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    int-to-float v5, v8

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sub-float/2addr v1, v2

    sget-object v2, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$1;->$SwitchMap$com$miui$video$common$library$widget$indicator$TitlePageIndicator$IndicatorStyle:[I

    iget-object v4, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v4}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-eqz v14, :cond_1a

    if-lt v13, v11, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    add-float/2addr v4, v5

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorUnderlinePadding:F

    sub-float/2addr v2, v5

    sub-float v3, v1, v3

    iget-object v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v20

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_c

    :pswitch_1
    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v4, v1, v3

    move/from16 v5, v17

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    add-float v14, v5, v3

    invoke-virtual {v2, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    sub-float v14, v5, v3

    invoke-virtual {v2, v14, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1a
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterPadding:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    sget-object v1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    add-float/2addr p2, v0

    :cond_1
    :goto_0
    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mScrollState:I

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    iput p2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPageOffset:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mScrollState:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

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

    iget v4, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    :cond_3
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    sub-float v0, p1, v0

    iget-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iput-boolean v1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mIsDragging:Z

    :cond_4
    iget-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mIsDragging:Z

    if-eqz v2, :cond_b

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v3, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mIsDragging:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v4, v6

    sub-float v6, v5, v4

    add-float/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    cmpg-float v4, p1, v6

    const/4 v6, 0x3

    if-gez v4, :cond_7

    iget p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    if-lez p1, :cond_a

    if-eq v0, v6, :cond_6

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_6
    return v1

    :cond_7
    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    iget p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_a

    if-eq v0, v6, :cond_8

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_8
    return v1

    :cond_9
    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;

    if-eqz p1, :cond_a

    if-eq v0, v6, :cond_a

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    invoke-interface {p1, v0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;->onCenterItemClick(I)V

    :cond_a
    iput-boolean v2, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mIsDragging:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto :goto_0

    :pswitch_5
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLastMotionX:F

    :cond_b
    :goto_0
    return v1

    :cond_c
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

.method public setClipPadding(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mClipPadding:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFooterColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorHeight(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorHeight:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorPadding(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterPadding:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterIndicatorStyle(Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterIndicatorStyle:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setFooterLineHeight(F)V
    .locals 1

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintFooterLine:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mFooterLineHeight:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setLinePosition(Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mLinePosition:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$LinePosition;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setOnCenterItemClickListener(Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mCenterItemClickListener:Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator$OnCenterItemClickListener;

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setSelectedBold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mBoldText:Z

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorSelected:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mColorText:I

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTitlePadding(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTitlePadding:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTopPadding(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mTopPadding:F

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object p1, p0, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/common/library/widget/indicator/TitlePageIndicator;->setCurrentItem(I)V

    return-void
.end method
