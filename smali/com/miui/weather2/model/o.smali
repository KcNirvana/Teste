.class public Lcom/miui/weather2/model/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/o$c;,
        Lcom/miui/weather2/model/o$a;,
        Lcom/miui/weather2/model/o$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/structures/WeatherData;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/weather2/model/o;->b(Lcom/miui/weather2/structures/WeatherData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/model/o$b;IILjava/lang/String;Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/structures/WeatherData;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/weather2/model/o$a;-><init>(Lcom/miui/weather2/model/p;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/o$a;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/o$a;->a(Lcom/miui/weather2/model/o$b;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/o$a;->a(I)V

    invoke-virtual {v0, p3}, Lcom/miui/weather2/model/o$a;->b(I)V

    invoke-virtual {v0, p4}, Lcom/miui/weather2/model/o$a;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/miui/weather2/model/o$a;->a(Lcom/miui/weather2/view/WeatherScrollView;)V

    invoke-virtual {v0, p6}, Lcom/miui/weather2/model/o$a;->a(Lcom/miui/weather2/structures/WeatherData;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/o$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private static b(Lcom/miui/weather2/structures/WeatherData;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/WeatherData;->getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/WeatherData;->getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "aqi"

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AQIData;->getAqi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pm25"

    invoke-virtual {p0}, Lcom/miui/weather2/structures/WeatherData;->getAQIData()Lcom/miui/weather2/structures/AQIData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/miui/weather2/structures/MinuteRainData;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "weather"

    invoke-virtual {v2}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v0, "windSpeed"

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWindPower()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "feelsLike"

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getFeelTemp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "temperature"

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v0, "weather"

    invoke-virtual {v1}, Lcom/miui/weather2/structures/RealTimeData;->getWeatherType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 4

    new-instance v0, Lcom/miui/weather2/model/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/o$c;-><init>(Lcom/miui/weather2/model/o;Lcom/miui/weather2/model/p;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/o$c;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/o$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method
