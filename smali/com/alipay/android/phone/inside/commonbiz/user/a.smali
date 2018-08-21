.class public Lcom/alipay/android/phone/inside/commonbiz/user/a;
.super Ljava/lang/Object;
.source "UserIdentifyUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;->activityList:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;->activityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/a;

    iget-object v0, v0, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/a;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/b;

    new-instance v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;-><init>()V

    const-string/jumbo v2, "ALIPAY_INSIDE"

    iput-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->sdkType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/c;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->sdkHost:Ljava/lang/String;

    iput-object v4, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->bizType:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/PrincipalVO;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/PrincipalVO;-><init>()V

    iput-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->principal:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/PrincipalVO;

    new-instance v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;-><init>()V

    iput-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    iget-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    iput-object v4, v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->ip:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    iput-object v4, v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->mac:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/commonbiz/user/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->imei:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    iput-object v4, v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->osName:Ljava/lang/String;

    iget-object v2, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    iput-object v4, v2, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->osVersion:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "utdid"

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/commonbiz/user/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;->deviceInfo:Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/DeviceInfoVO;->extInfo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/b;->a(Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyRequestVO;)Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UserIdentifyUtils::sendUserIdentifyRpc > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/inside/commonbiz/user/a;->a(Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/alipay/android/phone/inside/commonbiz/user/rpc/CustomerIdentifyResponseVO;->resultCode:Ljava/lang/String;

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/user/a;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/commonbiz/user/a;->b(Landroid/content/Context;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
