.class Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;
.super Ljava/lang/Object;
.source "CityPickerFragment.java"

# interfaces
.implements Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoNaviCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetLocation(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/personalassistant/util/MapUtil;->gps84_To_Gcj02_lat(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/miui/personalassistant/util/MapUtil;->gps84_To_Gcj02_lon(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/SearchLocationUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$800(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/miui/personalassistant/util/SearchLocationUtil;->getGeo(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V

    :cond_0
    return-void
.end method

.method public reqGeoEnd(ILjava/lang/String;)V
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    const-string/jumbo v3, "city"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$402(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pref_last_navi_location_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$700(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CityPickerFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment$AutoNaviCallBack;->this$0:Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;->access$700(Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
