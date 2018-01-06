.class public Lcom/miui/weather2/tools/ac;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/ac$a;
    }
.end annotation


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/ac;->b:Landroid/location/Location;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/weather2/tools/ac;->a:Landroid/location/LocationManager;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/miui/weather2/tools/ac$a;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    const-string v3, ""

    const-string v2, ""

    const-string v0, ""

    invoke-static {p0}, Lcom/miui/weather2/tools/ac;->b(Landroid/content/Context;)Lcom/miui/weather2/tools/ac;

    move-result-object v4

    invoke-direct {v4}, Lcom/miui/weather2/tools/ac;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v4}, Lcom/miui/weather2/tools/ac;->a()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LocationGetter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locateToGetJson() info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/miui/weather2/tools/bi;->a(DD)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    move-object v2, v3

    if-eqz v4, :cond_0

    invoke-static {v1, v2, p0}, Lcom/miui/weather2/f/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v2, p1, Lcom/miui/weather2/tools/ac$a;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/miui/weather2/tools/ac$a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/miui/weather2/tools/ac$a;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/miui/weather2/tools/ac$a;-><init>(Lcom/miui/weather2/tools/ad;)V

    invoke-static {p0, v2}, Lcom/miui/weather2/tools/ac;->a(Landroid/content/Context;Lcom/miui/weather2/tools/ac$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/weather2/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v4, v2, Lcom/miui/weather2/tools/ac$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/miui/weather2/structures/CityData;->setLatitude(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    iget-object v2, v2, Lcom/miui/weather2/tools/ac$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/weather2/structures/CityData;->setLongitude(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CityData;

    invoke-static {p0, v0}, Lcom/miui/weather2/tools/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/CityData;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/miui/weather2/tools/ac;
    .locals 6

    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "MyLocationGetter"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/miui/weather2/tools/ac;

    invoke-direct {v2, p0, v1}, Lcom/miui/weather2/tools/ac;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    invoke-direct {v2}, Lcom/miui/weather2/tools/ac;->c()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/weather2/tools/ac;->a()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {v2}, Lcom/miui/weather2/tools/ac;->d()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    return-object v2

    :cond_1
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

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ac;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/ac;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/tools/ac;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ac;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ac;->b:Landroid/location/Location;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ac;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/weather2/tools/ac;->b:Landroid/location/Location;

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
