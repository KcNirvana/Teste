.class public Lcom/miui/weather2/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accu"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "weathercn"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "twc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/weather2/e/c;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    :try_start_0
    const-string v0, "pubTime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090134

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/AqiQualityStation;
    .locals 2

    new-instance v0, Lcom/miui/weather2/structures/AqiQualityStation;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AqiQualityStation;-><init>()V

    :try_start_0
    const-string v1, "area"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setArea(Ljava/lang/String;)V

    const-string v1, "aqiValue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setAqiValue(Ljava/lang/String;)V

    const-string v1, "quality"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setAqiQuality(Ljava/lang/String;)V

    const-string v1, "latitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setLatitude(Ljava/lang/String;)V

    const-string v1, "longitude"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setLongitude(Ljava/lang/String;)V

    const-string v1, "stationCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setStationCode(Ljava/lang/String;)V

    const-string v1, "positionName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setPositionName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/ForecastData;
    .locals 10

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/ForecastData;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "forecastDaily"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "pubTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/miui/weather2/structures/ForecastData;->setLocalDate(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    const-string v3, "yesterday"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v1

    :goto_0
    :try_start_2
    const-string v3, "sunRise"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addSunRise(Ljava/lang/String;)V

    const-string v3, "sunSet"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addSunSet(Ljava/lang/String;)V

    const-string v3, "tempMax"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addTemperatureHigh(Ljava/lang/String;)V

    const-string v3, "tempMin"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addTemperatureLow(Ljava/lang/String;)V

    const-string v3, "weatherStart"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addWeatherDayType(Ljava/lang/String;)V

    const-string v3, "weatherEnd"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addWeatherNightType(Ljava/lang/String;)V

    const-string v3, "windSpeedStart"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addWindPower(Ljava/lang/String;)V

    const-string v3, "windDircStart"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addWindDirection(Ljava/lang/String;)V

    const-string v3, "aqi"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/ForecastData;->addAqi(Ljava/lang/String;)V

    const-string v1, "forecastDaily"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/miui/weather2/e/c;->a(Lorg/json/JSONObject;Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v1

    :try_start_3
    const-string v2, "sunRiseSet"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "from"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/weather2/structures/ForecastData;->addSunRise(Ljava/lang/String;)V

    const-string v6, "to"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/ForecastData;->addSunSet(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_0
    :try_start_4
    const-string v2, "temperature"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "from"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/weather2/structures/ForecastData;->addTemperatureHigh(Ljava/lang/String;)V

    const-string v6, "to"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/ForecastData;->addTemperatureLow(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :cond_1
    :try_start_5
    const-string v2, "weather"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "from"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/weather2/structures/ForecastData;->addWeatherDayType(Ljava/lang/String;)V

    const-string v6, "to"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/ForecastData;->addWeatherNightType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_2
    :try_start_6
    const-string v2, "wind"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "direction"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v2, "wind"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "speed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v2, v1

    :goto_4
    if-ge v2, v6, :cond_3

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "from"

    invoke-static {v7, v9}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/weather2/structures/ForecastData;->addWindDirection(Ljava/lang/String;)V

    const-string v7, "from"

    invoke-static {v8, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/miui/weather2/structures/ForecastData;->addWindPower(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_3
    move-exception v2

    :cond_3
    :try_start_7
    const-string v2, "aqi"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/ForecastData;->addAqi(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_4
    move-exception v1

    :cond_4
    :try_start_8
    invoke-virtual {v0}, Lcom/miui/weather2/structures/ForecastData;->calculateDayNum()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6

    :catch_6
    move-exception v3

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/miui/weather2/structures/IndicesData;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/IndicesData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/IndicesData;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "indices"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "indices"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/weather2/structures/IndicesData;->setTypes(ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "value"

    invoke-static {v3, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/weather2/structures/IndicesData;->setValues(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;JLandroid/content/Context;)Lcom/miui/weather2/structures/MinuteRainData;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/miui/weather2/structures/MinuteRainData;

    invoke-direct {v1}, Lcom/miui/weather2/structures/MinuteRainData;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "precipitation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setDescription(Ljava/lang/String;)V

    const-string v3, "isModify"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setIsModify(Z)V

    const-string v3, "isShow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setIsShow(Z)V

    const-string v3, "pubTime"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/miui/weather2/structures/MinuteRainData;->setLocalDate(Ljava/lang/String;Landroid/content/Context;)V

    const-string v3, "shortDescription"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setShortDescription(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setStatus(I)V

    const-string v3, "weather"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setWeatherType(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Lcom/miui/weather2/structures/MinuteRainData;->setFgUpdateTime(J)V

    const-string v3, "headDescription"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setHeadDescription(Ljava/lang/String;)V

    const-string v3, "headIconType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/weather2/structures/MinuteRainData;->setHeadIconType(Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/weather2/structures/MinuteRainData;->addPrecipitationData(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/RadarCloudImageData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "imgs"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/structures/RadarCloudImageData;

    invoke-direct {v5}, Lcom/miui/weather2/structures/RadarCloudImageData;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/weather2/structures/RadarCloudImageData;->setImageUrl(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/RadarCloudImageData;->setPointOfTime(J)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/RadarCloudImageData;->setLeftBottomLatitude(D)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/RadarCloudImageData;->setLeftBottomLongitude(D)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/RadarCloudImageData;->setRightTopLatitude(D)V

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/miui/weather2/structures/RadarCloudImageData;->setRightTopLongitude(D)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/miui/weather2/structures/WeatherData;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/miui/weather2/e/c;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/miui/weather2/e/c;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz p1, :cond_1

    const-string v2, "url"

    invoke-static {p0, v2, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "url"

    invoke-static {p0, v2, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/weather2/structures/WeatherData;->setLogoLink(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/weather2/structures/WeatherData;->setLogoType(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/weather2/structures/AqiQualityStationColony;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/weather2/structures/AqiQualityStationColony;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AqiQualityStationColony;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "latitudeLT"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->setLeftTopLat(Ljava/lang/String;)V

    const-string v2, "longitudeLT"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->setLeftTopLng(Ljava/lang/String;)V

    const-string v2, "latitudeRB"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->setRightBottomLat(Ljava/lang/String;)V

    const-string v2, "longitudeRB"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->setRightBottomLng(Ljava/lang/String;)V

    const-string v2, "stationsData"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/weather2/e/c;->a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/AqiQualityStationColony;->addStationItem(Lcom/miui/weather2/structures/AqiQualityStation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "minDisStation"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "minDisStation"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/weather2/e/c;->a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/weather2/structures/AqiQualityStation;->setStationDesc(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AqiQualityStationColony;->setMinDistanceStation(Lcom/miui/weather2/structures/AqiQualityStation;)V

    :cond_3
    const-string v2, "bestStation"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/e/c;->a(Lorg/json/JSONObject;)Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/AqiQualityStationColony;->addBestStationItem(Lcom/miui/weather2/structures/AqiQualityStation;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/weather2/structures/AqiQualityStation;->setStationDesc(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/HourlyData;
    .locals 7

    const/16 v6, 0x2f

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/HourlyData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/HourlyData;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "desc"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/HourlyData;->setDescription(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    :try_start_2
    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "aqi"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "aqi"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    if-ge v2, v6, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/HourlyData;->addAqi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_0
    :try_start_3
    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "temperature"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "temperature"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "pubTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/HourlyData;->setPubTime(Ljava/lang/String;)V

    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "temperature"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    if-ge v2, v6, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/HourlyData;->addTemperature(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    :cond_1
    :try_start_4
    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "weather"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "weather"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    if-ge v2, v6, :cond_2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/HourlyData;->addWeatherType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_2
    :try_start_5
    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "wind"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "forecastHourly"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "wind"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-ge v1, v6, :cond_3

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "speed"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/HourlyData;->addWind(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "direction"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/HourlyData;->addWindDirection(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    :cond_3
    :goto_5
    return-object v0

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "brandInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "brands"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    new-instance v3, Lcom/miui/weather2/structures/BrandInfo;

    invoke-direct {v3}, Lcom/miui/weather2/structures/BrandInfo;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "brandId"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/BrandInfo;->setBrandId(Ljava/lang/String;)V

    const-string v5, "logo"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/BrandInfo;->setLogo(Ljava/lang/String;)V

    const-string v5, "url"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/BrandInfo;->setUrl(Ljava/lang/String;)V

    new-instance v5, Lcom/miui/weather2/structures/BrandInfo$BrandNames;

    invoke-direct {v5}, Lcom/miui/weather2/structures/BrandInfo$BrandNames;-><init>()V

    const-string v6, "names"

    const-string v7, "en_US"

    invoke-static {v4, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->setEn_Us(Ljava/lang/String;)V

    const-string v6, "names"

    const-string v7, "zh_TW"

    invoke-static {v4, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->setZh_Tw(Ljava/lang/String;)V

    const-string v6, "names"

    const-string v7, "zh_CN"

    invoke-static {v4, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/miui/weather2/structures/BrandInfo$BrandNames;->setZh_Cn(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/BrandInfo;->setNames(Lcom/miui/weather2/structures/BrandInfo$BrandNames;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/RealTimeData;
    .locals 5

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/RealTimeData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/RealTimeData;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "temperature"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setTemperature(Ljava/lang/String;)V

    const-string v2, "weather"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setWeatherType(Ljava/lang/String;)V

    const-string v2, "wind"

    const-string v3, "direction"

    const-string v4, "value"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setWindDirection(Ljava/lang/String;)V

    const-string v2, "wind"

    const-string v3, "speed"

    const-string v4, "value"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setWindPower(Ljava/lang/String;)V

    const-string v2, "humidity"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setHumidity(Ljava/lang/String;)V

    const-string v2, "pressure"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setPressure(Ljava/lang/String;)V

    const-string v2, "uvIndex"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setUv(Ljava/lang/String;)V

    const-string v2, "feelsLike"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setFeelTemp(Ljava/lang/String;)V

    const-string v2, "humidity"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setHumidity(Ljava/lang/String;)V

    const-string v2, "visibility"

    const-string v3, "value"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/RealTimeData;->setVisibility(Ljava/lang/String;)V

    const-string v2, "pubTime"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/weather2/structures/RealTimeData;->setLocalDate(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/AQIData;
    .locals 7

    :try_start_0
    new-instance v0, Lcom/miui/weather2/structures/AQIData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AQIData;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "aqi"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "brandInfo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "aqi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setAqi(Ljava/lang/String;)V

    const-string v4, "suggest"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setAqiSuggest(Ljava/lang/String;)V

    const-string v4, "no2"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setNo2(Ljava/lang/String;)V

    const-string v4, "no2Desc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setNo2Desc(Ljava/lang/String;)V

    const-string v4, "pm10"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setPm10(Ljava/lang/String;)V

    const-string v4, "pm10Desc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setPm10Desc(Ljava/lang/String;)V

    const-string v4, "pm25"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setPm25(Ljava/lang/String;)V

    const-string v4, "pm25Desc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setPm25Desc(Ljava/lang/String;)V

    const-string v4, "co"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setCo(Ljava/lang/String;)V

    const-string v4, "coDesc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setCoDesc(Ljava/lang/String;)V

    const-string v4, "o3"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setO3(Ljava/lang/String;)V

    const-string v4, "o3Desc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setO3Desc(Ljava/lang/String;)V

    const-string v4, "pubTime"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Lcom/miui/weather2/structures/AQIData;->setPubTime(Ljava/lang/String;Landroid/content/Context;)V

    const-string v4, "so2"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setSo2(Ljava/lang/String;)V

    const-string v4, "so2Desc"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setSo2Desc(Ljava/lang/String;)V

    const-string v4, "src"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/AQIData;->setSpot(Ljava/lang/String;)V

    const-string v4, "primary"

    invoke-static {v1, v4}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AQIData;->setPrimary(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v1, "brands"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/miui/weather2/structures/Brand;

    invoke-direct {v5}, Lcom/miui/weather2/structures/Brand;-><init>()V

    const-string v6, "brandId"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/weather2/structures/Brand;->setBrandId(Ljava/lang/String;)V

    const-string v6, "logo"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/weather2/structures/Brand;->setLogo(Ljava/lang/String;)V

    const-string v6, "url"

    invoke-static {v4, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/miui/weather2/structures/Brand;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/AQIData;->setBrandArray(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "alerts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/miui/weather2/structures/Alert;

    invoke-direct {v4}, Lcom/miui/weather2/structures/Alert;-><init>()V

    const-string v5, "detail"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/weather2/structures/Alert;->setDetail(Ljava/lang/String;)V

    const-string v5, "level"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/weather2/structures/Alert;->setLevel(Ljava/lang/String;)V

    const-string v5, "pubTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/weather2/structures/Alert;->setPubTime(Ljava/lang/String;)V

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/weather2/structures/Alert;->setTitle(Ljava/lang/String;)V

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/weather2/structures/Alert;->setType(Ljava/lang/String;)V

    const-string v5, "images"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/miui/weather2/structures/Alert;->setIconUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static f(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/TodayData;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/weather2/structures/TodayData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/TodayData;-><init>()V

    const-string v4, "forecastDaily"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "sunRiseSet"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "forecastDaily"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "sunRiseSet"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "from"

    invoke-static {v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/miui/weather2/tools/bi;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_1
    if-eq v2, v3, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "from"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "from"

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/TodayData;->setSunRiseTodayLocal(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "to"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "to"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/TodayData;->setSunSetTodayLocal(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "from"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "from"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/TodayData;->setSunRiseTomorrowLocal(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "to"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "to"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/TodayData;->setSunSetTomorrowLocal(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "from"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "from"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/TodayData;->setSunRiseAfterTommrorrowLocal(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "to"

    invoke-static {v3, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "to"

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/TodayData;->setSunSetAfterTommrorowLocal(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/TodayData;->setSunRiseAndSetNum(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-object v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move v2, v3

    goto/16 :goto_1
.end method

.method public static g(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/PreHourData;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "preHour"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/miui/weather2/structures/PreHourData;

    invoke-direct {v3}, Lcom/miui/weather2/structures/PreHourData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "temperature"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setTemperature(Ljava/lang/String;)V

    const-string v5, "weather"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setWeatherType(Ljava/lang/String;)V

    const-string v5, "wind"

    const-string v6, "direction"

    const-string v7, "value"

    invoke-static {v4, v5, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setWindDirection(Ljava/lang/String;)V

    const-string v5, "wind"

    const-string v6, "speed"

    const-string v7, "value"

    invoke-static {v4, v5, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setWindPower(Ljava/lang/String;)V

    const-string v5, "humidity"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setHumidity(Ljava/lang/String;)V

    const-string v5, "pressure"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setPressure(Ljava/lang/String;)V

    const-string v5, "uvIndex"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setUv(Ljava/lang/String;)V

    const-string v5, "feelsLike"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setFeelTemp(Ljava/lang/String;)V

    const-string v5, "humidity"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setHumidity(Ljava/lang/String;)V

    const-string v5, "visibility"

    const-string v6, "value"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/weather2/structures/PreHourData;->setVisibility(Ljava/lang/String;)V

    const-string v5, "pubTime"

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/miui/weather2/structures/PreHourData;->setLocalDate(Ljava/lang/String;Landroid/content/Context;)V

    const-string v5, "aqi"

    const-string v6, "aqi"

    invoke-static {v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/weather2/structures/PreHourData;->setAqi(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-object v1

    :catch_1
    move-exception v3

    goto :goto_1
.end method
