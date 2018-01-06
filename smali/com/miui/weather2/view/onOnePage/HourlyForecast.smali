.class public Lcom/miui/weather2/view/onOnePage/HourlyForecast;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

.field private c:Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

.field private d:I

.field private e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    return-void
.end method

.method private a(Lcom/miui/weather2/structures/WeatherData;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/WeatherData;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getHourlyData()Lcom/miui/weather2/structures/HourlyData;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getTodayData()Lcom/miui/weather2/structures/TodayData;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getPreHourDataList()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAndSetNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    :goto_1
    invoke-virtual {v5}, Lcom/miui/weather2/structures/HourlyData;->getHourNum()I

    move-result v0

    iget v9, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    add-int/2addr v0, v9

    new-array v0, v0, [Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    array-length v9, v9

    if-ge v0, v9, :cond_4

    iget-object v9, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    new-instance v10, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-direct {v10}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;-><init>()V

    aput-object v10, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAndSetNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v9, 0x0

    aget-object v0, v0, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v9, 0x0

    aget-object v0, v0, v9

    const v9, 0x7f090069

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v9, 0x0

    aget-object v9, v0, v9

    if-nez v7, :cond_b

    const/4 v0, -0x1

    :goto_3
    iput v0, v9, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    if-nez v2, :cond_c

    const-string v0, ""

    :goto_4
    invoke-static {v7, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    if-nez v2, :cond_d

    const-string v0, ""

    :goto_5
    invoke-static {v7, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-virtual {v3}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v3

    iput v3, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    :goto_6
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v2, :cond_10

    const-string v0, ""

    :goto_7
    invoke-static {v4, v0}, Lcom/miui/weather2/tools/bi;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    const/4 v3, 0x0

    iput v3, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v2, :cond_11

    const/high16 v0, -0x80000000

    :goto_8
    iput v0, v3, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->g:I

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAndSetNum()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTodayNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const v2, 0x7f0900d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTodayNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->f:J

    :cond_5
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetTodayNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetTodayNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->g:J

    :cond_6
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const v2, 0x7f0900d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->h:J

    :cond_7
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_8

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->i:J

    :cond_8
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_9

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAfterTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const v2, 0x7f0900d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAfterTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->j:J

    :cond_9
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    const/4 v2, 0x6

    if-le v0, v2, :cond_a

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetAfterTomorrowNum(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const-string v2, ""

    iput-object v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const/16 v2, 0x63

    iput v2, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    const v2, 0x7f0900da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/miui/weather2/structures/TodayData;->getSunSetAfterTomorrowNum(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->k:J

    :cond_a
    invoke-virtual {v5, v4}, Lcom/miui/weather2/structures/HourlyData;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v2

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    :goto_9
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    int-to-long v10, v7

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v10, v12

    add-long/2addr v10, v2

    iput-wide v10, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const-string v7, ""

    iput-object v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getWeatherTypeNum(I)I

    move-result v7

    iput v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getTemperature(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/miui/weather2/tools/bi;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getTemperature(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, -0x80000000

    invoke-static {v7, v9}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->g:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v7, 0x2

    iput v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getAqiNum(I)I

    move-result v7

    iput v7, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getWind(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget v7, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    sub-int v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/miui/weather2/structures/HourlyData;->getWindDirection(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v7}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWindDirection()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v2, :cond_f

    const/16 v0, 0x63

    :goto_a
    iput v0, v3, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherTypeNum()I

    move-result v0

    goto :goto_a

    :cond_10
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v2}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_8

    :cond_12
    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->c()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_14

    aget-object v7, v1, v0

    iget-boolean v9, v7, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->f:Z

    if-eqz v9, :cond_13

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_16

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    if-lez v2, :cond_15

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    iput v1, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->d:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_19

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    if-nez v0, :cond_1a

    :goto_f
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_1b

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1b
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1c

    new-instance v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-direct {v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/PreHourData;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget v1, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_24

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-wide v8, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    :goto_11
    const-string v1, ""

    iput-object v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->f:Z

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getAqiNum()I

    move-result v1

    iput v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->d:I

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getWindPower()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getWindDirection()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b(Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getWeatherTypeNum()I

    move-result v1

    iput v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->c:I

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getTermerature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/miui/weather2/tools/bi;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->h:I

    invoke-virtual {v0}, Lcom/miui/weather2/structures/PreHourData;->getTermerature()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->g:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1c
    invoke-virtual {v5}, Lcom/miui/weather2/structures/HourlyData;->getPubTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a(Ljava/util/TimeZone;Ljava/util/ArrayList;)V

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Lcom/miui/weather2/structures/TodayData;->getSunRiseAndSetNum()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->f:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1d

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_1d
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->f:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1e

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->g:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1e

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_1e
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->g:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1f

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->h:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1f

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_1f
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->h:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_20

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->i:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_20

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_20
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->i:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_21

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->j:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_21

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_21
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->j:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_22

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->k:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_22

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_22
    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    iget-wide v6, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->k:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_23

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->i:Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_24
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-wide v8, v1, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    goto/16 :goto_11

    :cond_25
    move-object v0, v3

    goto/16 :goto_0

    :cond_26
    move v1, v2

    goto/16 :goto_f
.end method

.method private a(Ljava/util/TimeZone;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x6

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-boolean v0, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    iget-wide v8, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->a:J

    invoke-virtual {v4, v8, v9}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-le v0, v6, :cond_1

    const/16 v0, 0xb

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->f:Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->e:[Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/miui/weather2/view/onOnePage/HourlyForecast$a;->f:Z

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->c:Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->c:Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

    invoke-virtual {v0, v2, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->scrollTo(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->c:Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    const v0, 0x7f0f0038

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->c:Lcom/miui/weather2/view/onOnePage/HourlyForecastScrollView;

    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a:Landroid/widget/TextView;

    return-void
.end method

.method public setData(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 9

    const v8, 0x7f0a0196

    const v7, 0x7f0a018c

    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v6}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a(Lcom/miui/weather2/structures/WeatherData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getHourlyData()Lcom/miui/weather2/structures/HourlyData;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v4}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->b()V

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v4, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v6}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez v0, :cond_a

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getAqiArraySize()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getWindArraySize()I

    move-result v5

    if-nez v5, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {v4, v0, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(ZZ)V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getAqiArraySize()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getWindArraySize()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0193

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    :goto_2
    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getAqiArraySize()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a017c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getWindArraySize()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->b:Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getWindArraySize()I

    move-result v4

    if-nez v4, :cond_b

    move v2, v1

    :cond_b
    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/view/onOnePage/HourlyForecastTable;->a(ZZ)V

    invoke-virtual {v3}, Lcom/miui/weather2/structures/HourlyData;->getWindArraySize()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    :goto_4
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/HourlyForecast;->l:I

    goto :goto_4
.end method
