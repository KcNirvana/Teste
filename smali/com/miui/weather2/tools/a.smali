.class public Lcom/miui/weather2/tools/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/location/AMapLocation;

.field private d:Lcom/amap/api/location/AMapLocationClient;

.field private e:Lcom/amap/api/location/AMapLocationClientOption;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/a;->c:Lcom/amap/api/location/AMapLocation;

    iput-object p1, p0, Lcom/miui/weather2/tools/a;->b:Landroid/content/Context;

    const/4 v0, -0x3

    iput v0, p0, Lcom/miui/weather2/tools/a;->a:I

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/tools/a;->e:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/miui/weather2/tools/a;->e:Lcom/amap/api/location/AMapLocationClientOption;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/miui/weather2/tools/a;->e:Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/tools/a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/miui/weather2/tools/a;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/a;->c:Lcom/amap/api/location/AMapLocation;

    return-object p1
.end method

.method private static a(Landroid/content/Context;Lcom/miui/weather2/tools/a$a;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/miui/weather2/tools/a;->b(Landroid/content/Context;)Lcom/miui/weather2/tools/a;

    move-result-object v0

    iget-object v2, v0, Lcom/miui/weather2/tools/a;->c:Lcom/amap/api/location/AMapLocation;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v3, p1, Lcom/miui/weather2/tools/a$a;->c:Ljava/lang/String;

    iput-object v4, p1, Lcom/miui/weather2/tools/a$a;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getStreet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/weather2/tools/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    :cond_2
    invoke-static {p0}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {v4, v3, p0}, Lcom/miui/weather2/f/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/miui/weather2/tools/a$a;->e:Z

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/weather2/tools/a$a;->e:Z

    move-object v0, v1

    goto :goto_2
.end method

.method private a()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/t;->b(Landroid/content/Context;I)Lcom/miui/weather2/structures/CityData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_0
    const-string v3, "longitude"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "latitude"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "locationKey"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imei"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "currentTimeStamp"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "weather2_push_event_precipitation_category"

    const-string v1, "weather2_push_enent_precipitation_name"

    const-wide/16 v6, 0x1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v6, v7, v2}, Lcom/xiaomi/mipush/sdk/ah;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    invoke-static {p0, v4, v5}, Lcom/miui/weather2/tools/bi;->b(Landroid/content/Context;J)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->A(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/miui/weather2/tools/t;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/miui/weather2/tools/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/miui/weather2/tools/a$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/miui/weather2/tools/a$a;-><init>(Lcom/miui/weather2/tools/b;)V

    invoke-static {p0, v3}, Lcom/miui/weather2/tools/a;->a(Landroid/content/Context;Lcom/miui/weather2/tools/a$a;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v3, Lcom/miui/weather2/tools/a$a;->e:Z

    if-nez v4, :cond_5

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/weather2/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v5, v3, Lcom/miui/weather2/tools/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/CityData;->setName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v5, v3, Lcom/miui/weather2/tools/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/CityData;->setStreetName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v5, v3, Lcom/miui/weather2/tools/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/CityData;->setLatitude(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v5, v3, Lcom/miui/weather2/tools/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/miui/weather2/structures/CityData;->setLongitude(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/CityData;->setLocateFlag(I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)V

    :goto_1
    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez v0, :cond_4

    iget-object v0, v3, Lcom/miui/weather2/tools/a$a;->b:Ljava/lang/String;

    iget-object v1, v3, Lcom/miui/weather2/tools/a$a;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/miui/weather2/tools/a$a;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1, v3}, Lcom/miui/weather2/tools/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, v3, Lcom/miui/weather2/tools/a$a;->b:Ljava/lang/String;

    iget-object v1, v3, Lcom/miui/weather2/tools/a$a;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/miui/weather2/tools/a$a;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1, v4}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Lcom/miui/weather2/tools/a;
    .locals 6

    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "AMapLocationGetter HandlerThread"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/miui/weather2/tools/a;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/tools/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    invoke-direct {v2}, Lcom/miui/weather2/tools/a;->a()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_0

    const/4 v3, -0x2

    iget v4, v2, Lcom/miui/weather2/tools/a;->a:I

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, v2, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_1
    return-object v2

    :cond_2
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, -0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/miui/weather2/tools/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v0, p0, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/miui/weather2/tools/a;->e:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/miui/weather2/tools/b;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/b;-><init>(Lcom/miui/weather2/tools/a;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/a;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    :cond_0
    return-void
.end method
