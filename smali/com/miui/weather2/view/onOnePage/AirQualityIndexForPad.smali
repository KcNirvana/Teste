.class public Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:I

.field private D:F

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/miui/weather2/structures/WeatherData;

.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/RadioButton;

.field private l:Landroid/widget/RadioGroup;

.field private m:Lcom/miui/weather2/view/RingTable;

.field private n:Lcom/miui/weather2/view/RingTable;

.field private o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

.field private p:I

.field private q:I

.field private r:F

.field private s:Lcom/miui/weather2/structures/ForecastData;

.field private t:Lcom/miui/weather2/structures/HourlyData;

.field private u:Lcom/miui/weather2/structures/AQIData;

.field private v:Z

.field private w:[F

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    return-void
.end method

.method private a(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x6

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->k:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private a()V
    .locals 10

    const v9, 0x7f0b0013

    const/4 v8, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f0a01e9

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->setLinePaint(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    const v2, 0x7f0a01eb

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a01ec

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a01ed

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f0b0071

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->a(Landroid/graphics/Paint;FFFII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x7f0a0128

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->setTextPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0f001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0067

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 10

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->b()V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b()[I

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Z)[J

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Z)[I

    move-result-object v3

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->p:I

    iget v5, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->q:I

    const/16 v6, 0xfa

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->r:F

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(ZZ)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->c(Z)[I

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->a([I[J[IIIIF[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->d(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->setDateDescs([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->a()V

    iput-boolean p2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    return-void
.end method

.method private a(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;)[I
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/weather2/structures/HourlyData;->getAqiNum(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/miui/weather2/structures/ForecastData;)[J
    .locals 9

    const/4 v8, 0x5

    if-eqz p1, :cond_0

    new-array v0, v8, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/ForecastData;->getPubTimeNum()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/miui/weather2/structures/HourlyData;)[J
    .locals 9

    const/4 v8, 0x5

    if-eqz p1, :cond_0

    new-array v0, v8, [J

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v8, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private a(Z)[J
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/structures/ForecastData;)[J

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/structures/HourlyData;)[J

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/miui/weather2/structures/ForecastData;Z)[Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/ForecastData;->getAqi(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;Z)[Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/miui/weather2/structures/AQIData;->getAqi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v1

    const/4 v0, 0x1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/HourlyData;->getAqi(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/HourlyData;->getAqiNum(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_3
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private b(I)I
    .locals 2

    const/16 v1, 0x96

    const/16 v0, 0x4b

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-le p1, v0, :cond_1

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-le p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    return v0
.end method

.method private b()[I
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v0, 0x5

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    mul-int v4, v0, v2

    add-int/2addr v4, v1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private b(Lcom/miui/weather2/structures/ForecastData;)[I
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;)[I
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/miui/weather2/structures/HourlyData;->getAqiNum(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Z)[I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Lcom/miui/weather2/structures/ForecastData;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/miui/weather2/structures/HourlyData;)[Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f090136

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/HourlyData;->getPubTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x1

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v4

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(I)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(ZZ)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {p0, v0, p2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/structures/ForecastData;Z)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-direct {p0, v0, v1, p2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lcom/miui/weather2/structures/ForecastData;)[I
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Z)[I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->c(Lcom/miui/weather2/structures/ForecastData;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Lcom/miui/weather2/structures/HourlyData;Lcom/miui/weather2/structures/AQIData;)[I

    move-result-object v0

    goto :goto_0
.end method

.method private d(Lcom/miui/weather2/structures/ForecastData;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v1}, Lcom/miui/weather2/structures/ForecastData;->getDateDesc(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->d(Lcom/miui/weather2/structures/ForecastData;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(Lcom/miui/weather2/structures/HourlyData;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->G:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "is_pad"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a:Landroid/widget/TextView;

    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b:Landroid/widget/TextView;

    const v0, 0x7f0f0009

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->d:Landroid/widget/TextView;

    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->e:Landroid/view/View;

    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->f:Landroid/view/View;

    const v0, 0x7f0f0071

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->g:Landroid/view/View;

    const v0, 0x7f0f0072

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->h:Landroid/view/View;

    const v0, 0x7f0f0073

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->i:Landroid/view/View;

    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->j:Landroid/view/View;

    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->k:Landroid/widget/RadioButton;

    const v0, 0x7f0f0035

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->l:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->l:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/c;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/c;-><init>(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0f0077

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    new-instance v2, Lcom/miui/weather2/view/onOnePage/d;

    invoke-direct {v2, p0}, Lcom/miui/weather2/view/onOnePage/d;-><init>(Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;)V

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0f0008

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RingTable;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/RingTable;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a012d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->C:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->A:Landroid/graphics/Paint;

    sget-object v2, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->B:Landroid/graphics/Paint;

    sget-object v2, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v0, 0x7f090023

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->E:Ljava/lang/String;

    const v0, 0x7f09003c

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->F:Ljava/lang/String;

    const v0, 0x7f090130

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->G:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->D:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->p:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->q:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->r:F

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->o:Lcom/miui/weather2/view/onOnePage/AqiDetailTable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->C:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->y:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->w:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->D:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/RingTable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->C:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->z:[F

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->x:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->D:F

    add-float/2addr v1, v2

    aput v1, v0, v4

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->I:Ljava/lang/String;

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 10

    const/16 v9, 0x1f4

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->J:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v8}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->J:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->s:Lcom/miui/weather2/structures/ForecastData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->J:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/WeatherData;->getHourlyData()Lcom/miui/weather2/structures/HourlyData;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->t:Lcom/miui/weather2/structures/HourlyData;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v2

    invoke-static {v2, v0}, Lcom/miui/weather2/structures/AQIData;->getTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090136

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b:Landroid/widget/TextView;

    const v3, 0x7f09002c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/AQIData;->getPubTimeNum()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v2

    invoke-static {v2, v0}, Lcom/miui/weather2/structures/AQIData;->getTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->d:Landroid/widget/TextView;

    const v2, 0x7f090022

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->e:Landroid/view/View;

    const v2, 0x7f09012e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->f:Landroid/view/View;

    const v2, 0x7f09012d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->g:Landroid/view/View;

    const v2, 0x7f09012b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->h:Landroid/view/View;

    const v2, 0x7f09012f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->i:Landroid/view/View;

    const v2, 0x7f09012a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->j:Landroid/view/View;

    const v2, 0x7f09012c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->k:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->v:Z

    invoke-direct {p0, v1, v2}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->a(ZZ)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/miui/weather2/view/RingTable;->a(II)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->m:Lcom/miui/weather2/view/RingTable;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/RingTable;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->u:Lcom/miui/weather2/structures/AQIData;

    invoke-static {v1, v0}, Lcom/miui/weather2/structures/AQIData;->getPrimaryPollution(Lcom/miui/weather2/structures/AQIData;Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/miui/weather2/view/RingTable;->a(II)V

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->n:Lcom/miui/weather2/view/RingTable;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->b(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/RingTable;->setColor(I)V

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->H:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AirQualityIndexForPad;->invalidate()V

    goto/16 :goto_0
.end method
