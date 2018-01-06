.class public Lcom/miui/weather2/model/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/ag$b;,
        Lcom/miui/weather2/model/ag$i;,
        Lcom/miui/weather2/model/ag$f;,
        Lcom/miui/weather2/model/ag$h;,
        Lcom/miui/weather2/model/ag$j;,
        Lcom/miui/weather2/model/ag$a;,
        Lcom/miui/weather2/model/ag$c;,
        Lcom/miui/weather2/model/ag$e;,
        Lcom/miui/weather2/model/ag$g;,
        Lcom/miui/weather2/model/ag$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/ag;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/ag;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/ag;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ag$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/weather2/model/ag$f;-><init>(Landroid/content/Context;Lcom/miui/weather2/model/ag$e;Lcom/miui/weather2/structures/CityData;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag$f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/WeatherData;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, p1}, Lcom/miui/weather2/tools/bu;->a(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/WeatherData;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 14

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/t;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v12

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v10, v11

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v1

    if-ne v1, v11, :cond_2

    const-string v1, "true"

    :goto_2
    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4, p0}, Lcom/miui/weather2/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v10, v12

    goto :goto_1

    :cond_2
    const-string v1, "false"

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/miui/weather2/structures/WeatherData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;)V

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->W(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/weather2/model/ag;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    invoke-static {p0, v0, v11}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    goto :goto_1

    :cond_4
    move v12, v10

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Z
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/weather2/model/ag;->b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Lcom/miui/weather2/structures/WeatherData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bu;->a(Landroid/content/Context;Lcom/miui/weather2/structures/WeatherData;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)Lcom/miui/weather2/structures/WeatherData;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLocateFlag()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4, p0}, Lcom/miui/weather2/f/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->isLocationCity()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->Y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLongitude()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getExtra()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, p0}, Lcom/miui/weather2/f/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lcom/miui/weather2/structures/WeatherData;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/miui/weather2/structures/WeatherData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    const-string v0, "false"

    goto :goto_0

    :cond_2
    const-string v0, "Wth2:WeatherSession"

    const-string v2, "getWeatherDataNet() failed to get weatherData from net"

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:WeatherSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWeatherDataNet() cityId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",cityName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v5, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/miui/weather2/model/ag$c;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ag$i;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/weather2/model/ag$i;-><init>(Lcom/miui/weather2/model/ag;Lcom/miui/weather2/model/ag$c;Lcom/miui/weather2/structures/CityData;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag$i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/miui/weather2/model/ag$g;Lcom/miui/weather2/structures/CityData;)Landroid/os/AsyncTask;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ag$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/weather2/model/ag$h;-><init>(Lcom/miui/weather2/model/ag;Lcom/miui/weather2/model/ag$g;Lcom/miui/weather2/structures/CityData;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag$h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/miui/weather2/model/ag$d;Z)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/model/ag$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/weather2/model/ag$j;-><init>(Lcom/miui/weather2/model/ag;Lcom/miui/weather2/model/ah;)V

    invoke-virtual {v0, p2}, Lcom/miui/weather2/model/ag$j;->a(Lcom/miui/weather2/model/ag$d;)V

    invoke-virtual {v0, p1}, Lcom/miui/weather2/model/ag$j;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/model/ag$j;->a(Z)V

    invoke-virtual {v0, p3}, Lcom/miui/weather2/model/ag$j;->b(Z)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag$j;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/weather2/model/ag$a;)V
    .locals 6

    new-instance v0, Lcom/miui/weather2/model/ag$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/model/ag$b;-><init>(Lcom/miui/weather2/model/ag;Ljava/lang/String;Ljava/lang/String;ZLcom/miui/weather2/model/ag$a;)V

    sget-object v1, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/model/ag$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
