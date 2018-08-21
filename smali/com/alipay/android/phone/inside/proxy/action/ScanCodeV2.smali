.class public Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;
.super Ljava/lang/Object;
.source "ScanCodeV2.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/commonbiz/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;I)Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, p3}, Lcom/alipay/android/phone/inside/wallet/api/a;->a(Landroid/content/Context;I)Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;->SUCCESS:Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;

    if-ne v1, v2, :cond_2

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->d(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_DEAL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_VERSION_UNMATCH:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;->NOT_INSTALL:Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;

    if-ne v1, v2, :cond_3

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_NOT_INSTALL:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;->SIGN_ERROR:Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;

    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_SIGN_ERROR:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;->VERSION_UNMATCH:Lcom/alipay/android/phone/inside/wallet/api/WalletStatusEnum;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->ALIPAY_VERSION_UNMATCH:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    invoke-direct {p0, p3}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "success"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "routeHasRisk"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "routeSupport"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "supportParams"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "recommendChannels"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v2, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RISK:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    :goto_0
    :try_start_0
    const-string/jumbo v2, "scanStatus"

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-direct {p0, v4}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->e(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v4, p2}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->a(Landroid/content/Context;Lorg/json/JSONObject;I)Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->RECOMMEND:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->NOT_SUPPORT:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;->NOT_SUPPORT:Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2$ScanStatus;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "result"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const-string/jumbo v0, ""

    if-eqz p2, :cond_0

    const-string/jumbo v0, "alipayRouteScheme"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "directly"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    const-string/jumbo v2, "scan"

    const-string/jumbo v3, "AlipayRouteSchemeEx"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)I
    .locals 2

    const-string/jumbo v0, "minVersionCode"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x6e

    :cond_0
    return v0
.end method

.method private c(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "codeType"

    const-string/jumbo v2, "codeType"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    const-string/jumbo v2, "code"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Lorg/json/JSONObject;)Z
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "alipayProductVersion"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private e(Lorg/json/JSONObject;)Z
    .locals 2

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    const-string/jumbo v0, "alipayRouteScheme"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 5

    new-instance v1, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->c(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->b(Lorg/json/JSONObject;)I

    move-result v2

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "SCAN_CODE_SERVICE_V2"

    invoke-static {v4, v0}, Lcom/alipay/android/phone/inside/framework/service/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v3, v2, v0}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;->a(Landroid/content/Context;ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE_V2:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
