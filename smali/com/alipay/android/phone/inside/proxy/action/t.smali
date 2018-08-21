.class public Lcom/alipay/android/phone/inside/proxy/action/t;
.super Ljava/lang/Object;
.source "UserIdentifyAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/commonbiz/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "activities"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "inside"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 5

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v1, "utdid"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "imei"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/phone/inside/commonbiz/user/a;

    invoke-direct {v4, v1, v2}, Lcom/alipay/android/phone/inside/commonbiz/user/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/alipay/android/phone/inside/commonbiz/user/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/inside/proxy/action/t;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->USER_IDENTIFY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
