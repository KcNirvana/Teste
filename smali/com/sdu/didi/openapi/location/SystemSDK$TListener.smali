.class Lcom/sdu/didi/openapi/location/SystemSDK$TListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/openapi/location/SystemSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TListener"
.end annotation


# instance fields
.field private locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

.field final synthetic this$0:Lcom/sdu/didi/openapi/location/SystemSDK;


# direct methods
.method public constructor <init>(Lcom/sdu/didi/openapi/location/SystemSDK;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->this$0:Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->locationListener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/SystemSDK$TListener;->this$0:Lcom/sdu/didi/openapi/location/SystemSDK;

    invoke-virtual {v1, p1}, Lcom/sdu/didi/openapi/location/SystemSDK;->parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;->location(Lcom/sdu/didi/openapi/location/Location;)V

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
