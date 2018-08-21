.class public Lcom/sdu/didi/openapi/location/SystemSDK;
.super Lcom/sdu/didi/openapi/location/SdkHub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdu/didi/openapi/location/SystemSDK$TListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private locationListener:Landroid/location/LocationListener;

.field private manager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/sdu/didi/openapi/location/SdkHub;-><init>()V

    const-string/jumbo v0, "LocationSDK"

    const-string/jumbo v1, "System"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->context:Landroid/content/Context;

    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method protected parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;
    .locals 4

    check-cast p1, Landroid/location/Location;

    new-instance v0, Lcom/sdu/didi/openapi/location/Location;

    invoke-direct {v0}, Lcom/sdu/didi/openapi/location/Location;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/location/Location;->setLat(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/location/Location;->setLng(Ljava/lang/String;)V

    const-string/jumbo v1, "wgs84"

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/location/Location;->setMapType(Ljava/lang/String;)V

    return-object v0
.end method

.method public registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .locals 7

    new-instance v0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;

    invoke-direct {v0, p0, p2}, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;-><init>(Lcom/sdu/didi/openapi/location/SystemSDK;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V

    iput-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->locationListener:Landroid/location/LocationListener;

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v0, "passive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unRegistListener()V
    .locals 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->manager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/SystemSDK;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method
