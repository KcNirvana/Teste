.class Lcom/miui/personalassistant/util/GeoLocationManager$2;
.super Ljava/lang/Object;
.source "GeoLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/util/GeoLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/GeoLocationManager;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$400(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/personalassistant/util/LocationUtil;->setCurrentLocation(Landroid/content/Context;Landroid/location/Location;)V

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$400(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/personalassistant/util/LocationUtil;->sendLocation(Landroid/content/Context;Landroid/location/Location;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$500(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    iget-object v2, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$000(Lcom/miui/personalassistant/util/GeoLocationManager;)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$002(Lcom/miui/personalassistant/util/GeoLocationManager;I)I

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$500(Lcom/miui/personalassistant/util/GeoLocationManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/util/GeoLocationManager$2;->this$0:Lcom/miui/personalassistant/util/GeoLocationManager;

    invoke-static {v1}, Lcom/miui/personalassistant/util/GeoLocationManager;->access$200(Lcom/miui/personalassistant/util/GeoLocationManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Assist.GeoLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " onLocationChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Assist.GeoLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProviderDisabled : provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Assist.GeoLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProviderEnabled : provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "Assist.GeoLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStatusChanged : provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
