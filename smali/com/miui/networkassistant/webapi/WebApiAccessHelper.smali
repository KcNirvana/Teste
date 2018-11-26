.class public Lcom/miui/networkassistant/webapi/WebApiAccessHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "WebApiAccessHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "5cad8778-cddf-4269-ab73-48007445baa3"

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/common/g/b;->aMB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkRichPurchaseOnlineResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "imei"

    const-string/jumbo v2, "1119a27f-c197-49c2-ab4c-2e0aa53e74b9"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "zipCode"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "phonenum"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "spType"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https://api.miui.security.xiaomi.com/netassist/floworderunity/supportfloworder"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WebApiAccessHelper"

    const-string/jumbo v3, "checkRichPurchaseOnlineResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getBaseParams()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "device"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "versionType"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getMiuiVersionType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "region"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "miuiVersion"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "carrier"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getCloudDataParams()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "device"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->DEVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "t"

    const-string/jumbo v3, "stable"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "imei"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "region"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "miuiVersion"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->MIUI_VERSION:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "carrier"

    sget-object v3, Lcom/miui/networkassistant/utils/DeviceUtil;->CARRIER:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAppVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "dataVersion"

    const-string/jumbo v3, "100"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "initdev"

    const-string/jumbo v3, "false"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "isDiff"

    const-string/jumbo v3, "true"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static queryDataUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "imei"

    const-string/jumbo v2, "14ca47b4-7302-4900-91ef-6a76c65b40cc"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imsi"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "zipCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "phonenum"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "spType"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "monthused"

    invoke-virtual {v1, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "iccid"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https://api.miui.security.xiaomi.com/netassist/flow/queryflow"

    invoke-static {v0, v1}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->accessInternetByPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/DataUsageResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WebApiAccessHelper"

    const-string/jumbo v3, "DataUsageResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static reportTrafficCorrectionSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/common/g/d;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "imei"

    const-string/jumbo v2, "14ca47b4-7302-4900-91ef-6a76c65b40cc"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "province"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "city"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "carrier"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "product"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "upward"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "directive"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "downward"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "verison"

    const-string/jumbo v2, "1.1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/webapi/Constants;->URL_TRAFFIC_CORRECTION_SMS:Ljava/lang/String;

    const-string/jumbo v2, "5cdd8678-cddf-4269-ab73-48387445bba4"

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/g/b;->aMB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/common/g/d;

    invoke-direct {v1, v0}, Lcom/miui/common/g/d;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WebApiAccessHelper"

    const-string/jumbo v3, "reportTrafficCorrectionSms"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static updateMiuiVpnInfos()Lcom/miui/networkassistant/webapi/CloudModuleResult;
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getCloudDataParams()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/common/g/a;

    const-string/jumbo v2, "module"

    const-string/jumbo v3, "miui_vpn_infos"

    invoke-direct {v1, v2, v3}, Lcom/miui/common/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "update"

    sget-object v2, Lcom/miui/networkassistant/webapi/Constants;->apiUrl:Ljava/lang/String;

    const-string/jumbo v3, "21da76da-224c-2313-ac60-abcd70139283"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/common/g/b;->aMB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/CloudModuleResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/CloudModuleResult;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static updatePurchaseSmsNumberWhiteList()Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "imei"

    const-string/jumbo v2, "3e68adeb-b164-c212-s332-b0fb4dec6bf9"

    invoke-static {v2}, Lcom/miui/networkassistant/utils/DeviceUtil;->getAndroidId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dataVersion"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "isDiff"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/webapi/Constants;->URL_UPDATE_PURCHASE_SMS_NUMBER:Ljava/lang/String;

    const-string/jumbo v2, "3e68adeb-b164-c212-s332-b0fb4dec6bf9"

    invoke-static {}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->getBaseParams()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/g/b;->aMB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;

    invoke-direct {v1, v0}, Lcom/miui/networkassistant/webapi/PurchaseSmsNumberResult;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WebApiAccessHelper"

    const-string/jumbo v3, "updatePurchaseSmsNumberWhiteList"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
