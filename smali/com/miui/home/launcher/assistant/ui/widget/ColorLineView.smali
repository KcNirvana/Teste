.class public Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;
.super Landroid/view/View;
.source "ColorLineView.java"


# instance fields
.field private VIEW_WIDTH_SCALE:D

.field private mColorArr:[Ljava/lang/String;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/ColorLine;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mSumRatio:I

.field private mViewWidth:I

.field private mWinWidth:I

.field private startX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "#9b9c9e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#10de00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "#ffe400"

    aput-object v2, v0, v1

    const-string/jumbo v1, "#ff3600"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "#ff3600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mColorArr:[Ljava/lang/String;

    const-wide v0, 0x3feb333333333333L    # 0.85

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->VIEW_WIDTH_SCALE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "#9b9c9e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#10de00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "#ffe400"

    aput-object v2, v0, v1

    const-string/jumbo v1, "#ff3600"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "#ff3600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mColorArr:[Ljava/lang/String;

    const-wide v0, 0x3feb333333333333L    # 0.85

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->VIEW_WIDTH_SCALE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    iput v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "#9b9c9e"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "#10de00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "#ffe400"

    aput-object v2, v0, v1

    const-string/jumbo v1, "#ff3600"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string/jumbo v2, "#ff3600"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mColorArr:[Ljava/lang/String;

    const-wide v0, 0x3feb333333333333L    # 0.85

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->VIEW_WIDTH_SCALE:D

    return-void
.end method

.method private getStartX(I)I
    .locals 4

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/ColorLine;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->getRatio()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSumRatio()I
    .locals 6

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :goto_0
    return v4

    :cond_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/model/ColorLine;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->getRatio()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->getSumRatio()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mWinWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->VIEW_WIDTH_SCALE:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mWinWidth:I

    int-to-double v0, v0

    iget-wide v4, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->VIEW_WIDTH_SCALE:D

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v7, v9, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/home/launcher/assistant/module/model/ColorLine;

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->getRatio()I

    move-result v10

    invoke-virtual {v8}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;->getColorVal()I

    move-result v6

    invoke-direct {p0, v7}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->getStartX(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mColorArr:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    if-ltz v6, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mColorArr:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    int-to-float v1, v1

    div-float v1, v0, v1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->startX:F

    int-to-float v3, v10

    add-float/2addr v0, v3

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mSumRatio:I

    int-to-float v3, v3

    div-float v3, v0, v3

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mViewWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/ColorLine;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->mWinWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/ColorLineView;->invalidate()V

    return-void
.end method
