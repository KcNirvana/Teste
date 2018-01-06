.class public Lcom/miui/weather2/ActivityDailyForecastDetail;
.super Lcom/miui/weather2/be;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivityDailyForecastDetail$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/weather2/structures/WeatherData;

.field private b:Lcom/miui/weather2/structures/ForecastData;

.field private g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

.field private h:Lcom/miui/weather2/view/DailyForecastScrollView;

.field private i:Z

.field private j:I

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/FrameLayout;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Lcom/miui/weather2/structures/DailyForecastAdData;

.field private t:J

.field private u:J

.field private v:J

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/be;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityDailyForecastDetail;)Lcom/miui/weather2/structures/DailyForecastAdData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/ActivityDailyForecastDetail;Lcom/miui/weather2/structures/DailyForecastAdData;)Lcom/miui/weather2/structures/DailyForecastAdData;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    return-object p1
.end method

.method private a(Landroid/view/View;I)V
    .locals 12

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v0, 0x7f0f008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f0090

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0092

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0f0094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f0095

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0f0096

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0f0091

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v7, p2}, Lcom/miui/weather2/structures/ForecastData;->getWeatherDayTypesNum(I)I

    move-result v7

    invoke-static {v7}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconByWeatherType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v7, 0x7f0f0093

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2}, Lcom/miui/weather2/structures/ForecastData;->getWeatherNightTypesNum(I)I

    move-result v8

    invoke-static {v8}, Lcom/miui/weather2/structures/WeatherData;->getColorfulIconNightByWeatherType(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10}, Lcom/miui/weather2/structures/ForecastData;->getDateDesc(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2, v9}, Lcom/miui/weather2/structures/ForecastData;->getDateSubDesc(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2}, Lcom/miui/weather2/structures/ForecastData;->getWeatherDayTypesNum(I)I

    move-result v8

    iget-boolean v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->i:Z

    invoke-static {v8, v9, v10}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2}, Lcom/miui/weather2/structures/ForecastData;->getWeatherNightTypesNum(I)I

    move-result v8

    iget-boolean v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->i:Z

    invoke-static {v8, v9, v10}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2, v9}, Lcom/miui/weather2/structures/ForecastData;->getWindDirectionDesc(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v8, p2, v9}, Lcom/miui/weather2/structures/ForecastData;->getWindPowerDesc(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0f0097

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v10}, Lcom/miui/weather2/structures/ForecastData;->isAqiGlobal()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0070

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0070

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0b0070

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0070

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setYesterdayIndex(I)V

    :cond_2
    iget v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->r:I

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v2}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setHeightLightIndex(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v10, p2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v10

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v10, p2, v9}, Lcom/miui/weather2/structures/ForecastData;->getAqiDescByIndex(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v10, p2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v10

    invoke-static {v10}, Lcom/miui/weather2/structures/ForecastData;->getAqiLevel(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v10, p2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v9, p2}, Lcom/miui/weather2/structures/ForecastData;->getAqiNum(I)I

    move-result v9

    invoke-static {v9}, Lcom/miui/weather2/structures/AQIData;->getAqiIcon(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method private a(ZI)[I
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    add-int v3, v0, p2

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureHighNum(I)I

    move-result v1

    :goto_1
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    add-int v3, v0, p2

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureLowNum(I)I

    move-result v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private a(I)[J
    .locals 8

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v0

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/ForecastData;->getPubTimeNum()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-int v6, v0, p1

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 9

    const v5, 0x7f0b006a

    const/4 v8, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f0a0213

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setLinePaint(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const v2, 0x7f0a0214

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0215

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a0216

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const v6, 0x7f0b0071

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a(Landroid/graphics/Paint;FFFII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, 0x7f0a016b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const v1, 0x7f0b006b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Lcom/miui/weather2/bf;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setLinearText(Z)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setTextPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->d()V

    return-void
.end method

.method private b(ZI)[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v3

    add-int v4, v0, p2

    invoke-virtual {v1, v3, v4, p0}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureHighDesc(ZILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v3

    add-int v4, v0, p2

    invoke-virtual {v1, v3, v4, p0}, Lcom/miui/weather2/structures/ForecastData;->getTemperatureLowDesc(ZILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method static synthetic c(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 12

    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->k:Landroid/widget/Button;

    new-instance v1, Lcom/miui/weather2/c;

    invoke-direct {v1, p0}, Lcom/miui/weather2/c;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080003

    iget-object v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v6}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v0

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/ForecastData;->getPubTimeNum()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/ForecastData;->getPubTimeNum()J

    move-result-wide v4

    add-int/lit8 v0, v0, -0x2

    int-to-long v6, v0

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->m:Landroid/widget/TextView;

    const v4, 0x7f090057

    invoke-virtual {p0, v4}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/ForecastData;->haveYesterday()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/ForecastData;->getMinNum()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/ForecastData;->isAqiGlobal()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const v2, 0x7f03001e

    iget-object v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v4, v2}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f03001c

    iget-object v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->j()[I

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(I)[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(ZI)[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->a(ZI)[I

    move-result-object v10

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->b(ZI)[Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->b(ZI)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a020b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->b()V

    const/4 v0, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/ForecastData;->isAqiGlobal()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setTopLineMargin(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a015f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a015e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0xa

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a([I[J[IIIIF[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a015b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0xa

    neg-float v7, v7

    const/4 v9, 0x0

    move-object v3, v10

    move-object v8, v11

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a([I[J[IIIIF[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a()V

    :cond_5
    :goto_3
    const v0, 0x7f0f0088

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->p:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->p:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/miui/weather2/d;

    invoke-direct {v1, p0}, Lcom/miui/weather2/d;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/weather2/f;

    invoke-direct {v1, p0}, Lcom/miui/weather2/f;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->setTopLineMargin(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a015a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0159

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0xa

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a([I[J[IIIIF[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0147

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0xa

    neg-float v7, v7

    const/4 v9, 0x0

    move-object v3, v10

    move-object v8, v11

    invoke-virtual/range {v0 .. v9}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a([I[J[IIIIF[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a()V

    goto :goto_3
.end method

.method private d()V
    .locals 2

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v1, "closeAd()"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->p:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/miui/weather2/g;

    invoke-direct {v1, p0}, Lcom/miui/weather2/g;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->f()V

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getLandingPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.browser"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v2, "startWebView() package name is browser"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AD"

    iget v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->c:I

    iget-boolean v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->i:Z

    iget v5, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->e:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v1, "startWebView() package name is  not browser"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v2, "startWebView() query intent is zero"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AD"

    iget v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->c:I

    iget-boolean v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->i:Z

    iget v5, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->e:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_START_DOWNLOAD"

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, p0}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f(Lcom/miui/weather2/ActivityDailyForecastDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->h()V

    return-void
.end method

.method static synthetic g(Lcom/miui/weather2/ActivityDailyForecastDetail;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_DOWNLOAD_SUCCESS"

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, p0}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getViewMonitorUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "APP_INSTALL_SUCCESS"

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getEx()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1, p0}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private i()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "locationKey"

    iget-object v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->q:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "model"

    invoke-static {}, Lcom/miui/weather2/f/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device"

    invoke-static {}, Lcom/miui/weather2/tools/bi;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "androidVersion"

    invoke-static {}, Lcom/miui/weather2/f/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "miuiVersionName"

    invoke-static {}, Lcom/miui/weather2/tools/bi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "miuiVersion"

    invoke-static {}, Lcom/miui/weather2/tools/bi;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "buildVersion"

    invoke-static {}, Lcom/miui/weather2/tools/bi;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenDensity"

    invoke-static {p0}, Lcom/miui/weather2/f/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenResolution"

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenWidth"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screenHeight"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "country"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->u(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "connectionType"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/weather2/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v0

    new-instance v2, Lcom/miui/weather2/h;

    invoke-direct {v2, p0}, Lcom/miui/weather2/h;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/c/d;->a(Ljava/util/Map;Lretrofit/Callback;)V

    return-void
.end method

.method private j()[I
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->j:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->j:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->isAdInfosExistence()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->isParametersExistence()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/weather2/ActivityDailyForecastDetail$a;

    invoke-direct {v2, p0}, Lcom/miui/weather2/ActivityDailyForecastDetail$a;-><init>(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    invoke-virtual {v1, v0, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startApp(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->s:Lcom/miui/weather2/structures/DailyForecastAdData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdData;->getAdInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/DailyForecastAdInfoData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoData;->getParameters()Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/DailyForecastAdInfoParametersData;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Wth2:ActivityDailyForecastDetail"

    const-string v1, "jumpUrl() Start WebView"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->e()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->w:Z

    iget-boolean v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->u:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onBackPressed()V

    const-string v0, "sign_out"

    const-string v1, "forecast_detail"

    const-string v2, "click_back"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/weather2/be;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/WeatherData;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->a:Lcom/miui/weather2/structures/WeatherData;

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->a:Lcom/miui/weather2/structures/WeatherData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->a:Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/WeatherData;->getForecastData()Lcom/miui/weather2/structures/ForecastData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->b:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/ForecastData;->isAqiGlobal()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->setContentView(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_night"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->i:Z

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "location_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "click_index_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->r:I

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->g:Lcom/miui/weather2/view/onOnePage/DailyForecastTable;

    const v0, 0x7f0f008b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/DailyForecastScrollView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->h:Lcom/miui/weather2/view/DailyForecastScrollView;

    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->j:I

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->b()V

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->c()V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->i()V

    :cond_3
    return-void

    :cond_4
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/miui/weather2/ActivityDailyForecastDetail;->setContentView(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/miui/weather2/be;->onPause()V

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->h:Lcom/miui/weather2/view/DailyForecastScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->h:Lcom/miui/weather2/view/DailyForecastScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/DailyForecastScrollView;->setCostTimeUpdateListener(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->w:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->t:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    cmp-long v4, v0, v6

    if-lez v4, :cond_2

    const-string v4, "time_daily_forecast"

    const-string v5, "all"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    cmp-long v0, v2, v6

    if-lez v0, :cond_3

    const-string v0, "time_daily_forecast"

    const-string v1, "first"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/weather2/be;->onResume()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->u:J

    iput-wide v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->t:J

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->h:Lcom/miui/weather2/view/DailyForecastScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityDailyForecastDetail;->h:Lcom/miui/weather2/view/DailyForecastScrollView;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/view/DailyForecastScrollView;->setCostTimeUpdateListener(Lcom/miui/weather2/ActivityDailyForecastDetail;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/weather2/be;->onStop()V

    const-string v0, "sign_out"

    const-string v1, "forecast_detail"

    const-string v2, "sign_out"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
