.class public Lcom/miui/weather2/view/AqiQualityFirstPart;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/miui/weather2/view/RingTable;

.field private g:[F

.field private h:[F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->g:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->h:[F

    invoke-direct {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->g:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->g:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->j:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->a:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0f0009

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0008

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RingTable;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    const v0, 0x7f0f000a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->e:Landroid/widget/TextView;

    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->k:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->i:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->j:F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->h:[F

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->h:[F

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->i:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->g:[F

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->h:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->g:[F

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->h:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->k:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    return-void
.end method

.method public setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/RingTable;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    iget v2, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->j:F

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/RingTable;->setContentVerticalOffset(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->f:Lcom/miui/weather2/view/RingTable;

    const/16 v2, 0x1f4

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/weather2/view/RingTable;->b(II)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/weather2/structures/AQIData;->getDetailTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqiSuggest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/weather2/view/AqiQualityFirstPart;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getFgUpdateTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/AqiQualityFirstPart;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/weather2/tools/bi;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
