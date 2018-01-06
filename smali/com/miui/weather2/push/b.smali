.class public Lcom/miui/weather2/push/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/weather2/structures/PushPrecipitationData;

.field private b:Landroid/app/NotificationManager;

.field private c:Landroid/content/Context;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1e26e

    iput v0, p0, Lcom/miui/weather2/push/b;->d:I

    iput-object p1, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/push/b;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/push/b;->b:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private a()V
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/t;->b(Landroid/content/Context;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v4

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    iget-object v5, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/PushPrecipitationData;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v5, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/PushPrecipitationData;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-static {v0, v3}, Lcom/amap/api/maps2d/e;->a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/PushPrecipitationData;->getPubTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v3, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/weather2/tools/bi;->z(Landroid/content/Context;)J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v5}, Lcom/miui/weather2/structures/PushPrecipitationData;->getExpireTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    cmp-long v5, v10, v8

    if-gez v5, :cond_3

    :goto_2
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/miui/weather2/structures/CityData;->getStreetName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/push/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, v6, v7, v4}, Lcom/miui/weather2/push/b;->a(JLcom/miui/weather2/structures/CityData;)V

    invoke-direct {p0}, Lcom/miui/weather2/push/b;->b()V

    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;J)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private a(JLcom/miui/weather2/structures/CityData;)V
    .locals 9

    const v4, 0x7f020118

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    const-class v2, Lcom/miui/weather2/ActivityMinuteRain;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "city_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "from_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iget-object v2, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/PushPrecipitationData;->getGeneratedTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/PushPrecipitationData;->getGeneratedDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v3, "extraNotification"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v3, "android.app.MiuiNotification"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setCustomizedIcon"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/weather2/push/b;->b:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/miui/weather2/push/b;->b:Landroid/app/NotificationManager;

    const v3, 0x1e26e

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "normal_view"

    const-string v2, "weather_style_notification_show"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xc9

    const-string v1, "push_precipitation_notification_style"

    const-string v2, "push_precipitation_notification_style_a"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push_precipitation_notification_style_b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/PushPrecipitationData;->getDescriptionOrignal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/structures/PushPrecipitationData;->setGeneratedDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setGeneratedTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "push_precipitation_notification_style_c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->getDescriptionOrignal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/PushPrecipitationData;->getDescriptionOrignal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/32 v2, 0x1b7740

    new-instance v1, Lcom/miui/weather2/push/c;

    invoke-direct {v1, p0}, Lcom/miui/weather2/push/c;-><init>(Lcom/miui/weather2/push/b;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/mipush/sdk/af;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/push/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "notifyId"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-direct {v2}, Lcom/miui/weather2/structures/PushPrecipitationData;-><init>()V

    iput-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setNotifyId(Ljava/lang/String;)V

    const-string v1, "messageDatas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    const-string v2, "precip"

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setOrignalTitle(Ljava/lang/String;)V

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setDescriptionOrignal(Ljava/lang/String;)V

    const-string v1, "pubTime"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setPubTime(Ljava/lang/String;)V

    const-string v1, "expireTime"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setExpireTime(Ljava/lang/String;)V

    const-string v1, "longitude"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setLongitude(Ljava/lang/String;)V

    const-string v1, "latitude"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v2, v1}, Lcom/miui/weather2/structures/PushPrecipitationData;->setLatitude(Ljava/lang/String;)V

    const-string v1, "rainOrSnow"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/push/b;->a:Lcom/miui/weather2/structures/PushPrecipitationData;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/structures/PushPrecipitationData;->setRainOrSnow(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/weather2/push/b;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
