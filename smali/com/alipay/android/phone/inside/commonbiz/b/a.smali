.class public Lcom/alipay/android/phone/inside/commonbiz/b/a;
.super Ljava/lang/Object;
.source "OutsideConfig.java"


# static fields
.field private static a:Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

.field private static b:Lcom/alipay/android/phone/inside/commonbiz/b/a/a;

.field private static c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a:Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 12

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v0, "sdk_env_info"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "lbsInfo"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_1

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    const-string/jumbo v1, "speed"

    const-string/jumbo v2, ""

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "accuracy"

    const-string/jumbo v3, ""

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "altitude"

    const-string/jumbo v4, ""

    invoke-virtual {v11, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "bearing"

    const-string/jumbo v5, ""

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "latitude"

    const-string/jumbo v6, ""

    invoke-virtual {v11, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "longitude"

    const-string/jumbo v7, ""

    invoke-virtual {v11, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "time"

    const-string/jumbo v8, ""

    invoke-virtual {v11, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "lbsOpen"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a:Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    const-string/jumbo v0, "lbsInfo"

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;

    const-string/jumbo v1, "bluetoothOpen"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "bluetoothMac"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->b:Lcom/alipay/android/phone/inside/commonbiz/b/a/a;

    :cond_0
    const-string/jumbo v1, "bluetoothOpen"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "bluetoothMac"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    const-string/jumbo v0, "gsmInfos"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v9

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;

    const-string/jumbo v1, "rssi"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mcc"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cid"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v11, "lac"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/inside/commonbiz/b/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "lbsOpen"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a:Lcom/alipay/android/phone/inside/commonbiz/b/a/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "\u89e3\u6790\u73af\u5883\u4fe1\u606f\u5f02\u5e38"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move-object v3, v6

    :cond_4
    :try_start_1
    new-instance v4, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;

    const-string/jumbo v0, "bsid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nid"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rssi"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sid"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    const-string/jumbo v1, "cellConn"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cellType"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "simOperator"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/inside/commonbiz/b/a/b;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    :cond_5
    const-string/jumbo v1, "gsmInfos"

    if-nez v8, :cond_6

    const-string/jumbo v0, ""

    :goto_3
    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "bsid"

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "nid"

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "rssi"

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "sid"

    invoke-virtual {v4}, Lcom/alipay/android/phone/inside/commonbiz/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "cellConn"

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "cellType"

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "simOperator"

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/b/a/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "wifis"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->d:Ljava/util/List;

    move v0, v9

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;

    const-string/jumbo v4, "wifiMac"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rssi"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/alipay/android/phone/inside/commonbiz/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/b/a;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v0, "isWifiConn"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f:Z

    const-string/jumbo v0, "netType"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->e:Ljava/lang/String;

    const-string/jumbo v2, "wifis"

    if-nez v1, :cond_a

    const-string/jumbo v0, ""

    :goto_5
    invoke-static {v2, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "isWifiConn"

    sget-boolean v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "netType"

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "pushDeviceId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g:Ljava/lang/String;

    :cond_8
    const-string/jumbo v0, "currentUserPhoneNo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    sput-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h:Ljava/lang/String;

    :cond_9
    const-string/jumbo v1, "isPrisonBreak"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->i:Z

    const-string/jumbo v1, "isTrojan"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->j:Z

    const-string/jumbo v1, "currentUserPhoneNo"

    invoke-static {v1, v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "isPrisonBreak"

    sget-boolean v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->i:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "isTrojan"

    sget-boolean v1, Lcom/alipay/android/phone/inside/commonbiz/b/a;->j:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->setGlobalUserData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5
.end method

.method public static b()Lcom/alipay/android/phone/inside/commonbiz/b/a/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->b:Lcom/alipay/android/phone/inside/commonbiz/b/a/a;

    return-object v0
.end method

.method public static c()Lcom/alipay/android/phone/inside/commonbiz/b/a/e;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->c:Lcom/alipay/android/phone/inside/commonbiz/b/a/e;

    return-object v0
.end method

.method public static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/inside/commonbiz/b/a/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->i:Z

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->j:Z

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f:Z

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/b/a;->e:Ljava/lang/String;

    return-object v0
.end method
