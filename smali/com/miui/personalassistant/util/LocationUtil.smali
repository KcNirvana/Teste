.class public Lcom/miui/personalassistant/util/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/util/LocationUtil$ConditionInfo;
    }
.end annotation


# static fields
.field private static final LOCATION_EXPIRED_TIME:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "LocationUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestProvider(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "network"

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-virtual {v1, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getIntByDouble(D)I
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method private static getLastLocationUpdateTime(Landroid/content/Context;)J
    .locals 4

    const-string/jumbo v0, "pref_last_location_update_time"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastPreferedLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    const-string/jumbo v6, "pref_last_latitude"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {p0, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "pref_last_longitude"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "key_encrypt_assi"

    invoke-static {p0, v6, v7, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "last_location_accuracy"

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p0, v6, v7}, Lcom/miui/personalassistant/util/Preference;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/location/Location;

    const-string/jumbo v6, "network"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v0}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v6, "LocationUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public static isLocationExpired(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getLastLocationUpdateTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isRequiredParamMissing([Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    array-length v1, p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sendEmptyLocation(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.getcurrentlocation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "longitude"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "location_detail"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "miui.personalassistant.permission.RECEIVE_TRANSPROXY_DATA"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendEtaLineInfo(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.getetalineinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "etaInfo"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "miui.personalassistant.permission.RECEIVE_TRANSPROXY_DATA"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendLastLocation(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/util/LocationUtil;->getLastPreferedLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/LocationUtil;->sendLocation(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method

.method public static sendLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/miui/personalassistant/util/MapUtil;->gps84_To_Gcj02_lat(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/miui/personalassistant/util/MapUtil;->gps84_To_Gcj02_lon(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.personalassistant.getcurrentlocation"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "latitude"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "miui.personalassistant.permission.RECEIVE_TRANSPROXY_DATA"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 8

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    :cond_0
    const-string/jumbo v3, "last_location_accuracy"

    invoke-static {p0, v3, v0}, Lcom/miui/personalassistant/util/Preference;->setFloat(Landroid/content/Context;Ljava/lang/String;F)V

    const-string/jumbo v3, "pref_last_latitude"

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {p0, v3, v1, v4}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pref_last_longitude"

    const-string/jumbo v4, "key_encrypt_assi"

    invoke-static {p0, v3, v2, v4}, Lcom/miui/personalassistant/util/PrefUtil;->setEncryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pref_last_location_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "LocationUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentLocation1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "LocationUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentLocation2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "pref_last_location_update_time"

    const-wide/16 v6, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/miui/personalassistant/util/Preference;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
