.class public Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FloatingBarItemDecoration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorationBg:Landroid/graphics/drawable/Drawable;

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFirstDecorationPosition:I

.field private mFloatingDecorationBg:Landroid/graphics/drawable/Drawable;

.field private mList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBaselineOffset:I

.field private mTextHeight:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTitleHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFirstDecorationPosition:I

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    const v2, 0x1b0202a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFloatingDecorationBg:Landroid/graphics/drawable/Drawable;

    const v2, 0x1b0202a3    # 1.07542E-22f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDecorationBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFloatingDecorationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x1b0f00a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    const v3, 0x1b0c012c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDividerPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDividerPaint:Landroid/graphics/Paint;

    const v3, 0x1b0f00a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextHeight:I

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextBaselineOffset:I

    return-void
.end method

.method private drawTitleArea(Landroid/graphics/Canvas;IILandroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutParams;IZ)V
    .locals 7

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDecorationBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    sub-int v1, v6, v1

    invoke-virtual {v0, p2, v1, p3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDecorationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p7, :cond_0

    int-to-float v1, p2

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    int-to-float v3, p3

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    iget v3, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextBaselineOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTag(I)Ljava/lang/String;
    .locals 2

    :goto_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    :goto_0
    invoke-virtual {p1, v2, v1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {p2, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewPosition()I

    move-result v6

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFirstDecorationPosition:I

    if-ne v6, v0, :cond_1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->drawTitleArea(Landroid/graphics/Canvas;IILandroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutParams;IZ)V

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->drawTitleArea(Landroid/graphics/Canvas;IILandroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutParams;IZ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->getTag(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->getTag(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v4}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->getTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    if-ge v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFloatingDecorationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v8

    iget v9, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFloatingDecorationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTitleHeight:I

    iget v7, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextBaselineOffset:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public setFirstDecorationPosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->mFirstDecorationPosition:I

    return-void
.end method
