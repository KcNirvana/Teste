.class public Lcom/miui/weather2/push/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/miui/weather2/push/a;->a:I

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/miui/weather2/structures/CityData;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/t;->b(Landroid/content/Context;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/CityData;->setWeatherData(Lcom/miui/weather2/structures/WeatherData;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lcom/miui/weather2/structures/NotificationAqiData;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "messageDatas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Lcom/miui/weather2/structures/NotificationAqiData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/NotificationAqiData;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    const-string v3, "aqiData"

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "aqiValue"

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/NotificationAqiData;->setAqiValue(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/NotificationAqiData;->setTitle(Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/NotificationAqiData;->setDesc(Ljava/lang/String;)V

    const-string v1, "pubTime"

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/NotificationAqiData;->setPubTime(Ljava/lang/String;)V

    const-string v1, "expireTime"

    invoke-static {v2, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/NotificationAqiData;->setExpireTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/structures/NotificationAqiData;)V
    .locals 7

    const/high16 v4, 0x10000000

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/miui/weather2/push/a;->a(Landroid/content/Context;)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/weather2/push/a;->a(Lcom/miui/weather2/structures/NotificationAqiData;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getAqiValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/weather2/push/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/miui/weather2/ActivityAqiDetail;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "from_notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aqiStatus"

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getAqiValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/weather2/push/a;->d(Ljava/lang/String;)Lcom/miui/weather2/model/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/model/k;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "data_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {p0, v0, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getAqiValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/push/a;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/NotificationAqiData;->getAqiValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/push/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v2, "extraNotification"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v2, "android.app.MiuiNotification"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setCustomizedIcon"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v2, Lcom/miui/weather2/push/a;->a:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->C(Landroid/content/Context;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/miui/weather2/push/a;->d(Ljava/lang/String;)Lcom/miui/weather2/model/k;

    move-result-object v4

    sget-object v2, Lcom/miui/weather2/model/k;->b:Lcom/miui/weather2/model/k;

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v1

    :goto_0
    if-nez v3, :cond_0

    sget-object v5, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    if-eq v5, v2, :cond_0

    sget-object v5, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    if-ne v5, v2, :cond_2

    :cond_0
    sget-object v5, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    if-ne v5, v4, :cond_2

    invoke-static {p0, v4}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v1, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    invoke-static {p0, v1, p1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;Ljava/lang/String;)V

    const-string v1, "notification_aqi_change_show"

    const-string v2, "better"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_1
    invoke-static {v3}, Lcom/miui/weather2/push/a;->d(Ljava/lang/String;)Lcom/miui/weather2/model/k;

    move-result-object v2

    move v3, v0

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    sget-object v3, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    if-ne v3, v2, :cond_4

    :cond_3
    sget-object v2, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    invoke-static {p0, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v1, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    invoke-static {p0, v1, p1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;Ljava/lang/String;)V

    const-string v1, "notification_aqi_change_show"

    const-string v2, "worse"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    if-ne v2, v4, :cond_5

    sget-object v2, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    invoke-static {p0, v2}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v1, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    invoke-static {p0, v1, p1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/model/k;Ljava/lang/String;)V

    const-string v1, "notification_aqi_change_show"

    const-string v2, "over"

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/miui/weather2/structures/NotificationAqiData;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/structures/NotificationAqiData;->getExpireTime()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    const v0, 0x7f020149

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1

    const v0, 0x7f02014a

    goto :goto_0

    :cond_1
    const v0, 0x7f020148

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lcom/miui/weather2/model/k;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x96

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/miui/weather2/model/k;->b:Lcom/miui/weather2/model/k;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    goto :goto_0
.end method
