.class public Lcom/xiaomi/phonenum/obtain/ObtainHandler;
.super Ljava/lang/Object;
.source "ObtainHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ObtainHandler"


# instance fields
.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

.field private logger:Lcom/xiaomi/phonenum/utils/Logger;

.field private parser:Lcom/xiaomi/phonenum/obtain/Parser;

.field private phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/phone/PhoneUtil;Lcom/xiaomi/phonenum/http/HttpFactory;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/phonenum/phone/PhoneUtil;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/xiaomi/phonenum/http/HttpFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    iput-object p1, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    iput-object p4, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    return-void
.end method

.method private checkPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->NO_READ_PHONE_STATE_PERMISSION:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw v0
.end method

.method private checkSimState(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->isSimStateReadyForSubId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    const-wide/16 v1, 0xbb8

    invoke-interface {v0, p1, v1, v2}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->waitForServiceForSubId(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->SIM_NOT_READY:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->SIM_NOT_READY:Lcom/xiaomi/phonenum/bean/Error;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->SIM_NOT_READY:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw p1
.end method

.method private getMobileIp(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getDataEnabledForSubId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "ObtainHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data disabled, sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "ObtainHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data enabled, sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private isPhoneResponse(Lcom/xiaomi/phonenum/http/Response;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/xiaomi/phonenum/http/Response;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "result"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneNumber"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    invoke-static {p1}, Lcom/xiaomi/phonenum/bean/Error;->codeToError(I)Lcom/xiaomi/phonenum/bean/Error;

    move-result-object p1

    const-string v2, "desc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->JSON:Lcom/xiaomi/phonenum/bean/Error;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInNetTime ObtainStrategy response:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SDK_INT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " BRAND/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PRODUCT/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MODEL/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INCREMENTAL/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " APP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parsePhoneNumberResult(ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "phoneNumber"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "number"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "numberHash"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iccid"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "copywriter"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "operatorLink"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    invoke-direct {v5}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;-><init>()V

    invoke-virtual {v5, p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->subId(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->traceId(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->number(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->numberHash(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->iccid(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->token(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->copywriter(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->operatorLink(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->isVerified(Z)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    iget p2, p4, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->phoneLevel(I)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->build()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p2, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object p3, Lcom/xiaomi/phonenum/bean/Error;->JSON:Lcom/xiaomi/phonenum/bean/Error;

    const-string p4, ""

    invoke-direct {p2, p3, p4, p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private requestPhoneNum(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v1, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "iccid"

    iget-object v3, v1, Lcom/xiaomi/phonenum/bean/Sim;->iccid:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imsi"

    iget-object v3, v1, Lcom/xiaomi/phonenum/bean/Sim;->imsi:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "simMccmnc"

    iget-object v3, v1, Lcom/xiaomi/phonenum/bean/Sim;->mccmnc:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "line1Number"

    iget-object v1, v1, Lcom/xiaomi/phonenum/bean/Sim;->line1Number:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "networkMccmnc"

    iget-object v2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v2, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getNetworkMccMncForSubId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    iget-object v2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->appId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imei"

    iget-object v2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v2}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phoneType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v3, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getPhoneTypeForSubId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "traceId"

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "versionCode"

    const-string v1, "8"

    invoke-direct {p0, v0, p2, v1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "phoneLevel"

    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pip"

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->getMobileIp(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "packageName"

    iget-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/phonenum/utils/MapUtil;->joinToQuery(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string p3, "ObtainHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/xiaomi/phonenum/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/phonenum/http/Request$Builder;

    invoke-direct {p1}, Lcom/xiaomi/phonenum/http/Request$Builder;-><init>()V

    sget-object p2, Lcom/xiaomi/phonenum/Constant;->OBTAIN_STRATEGY_URL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/http/Request$Builder;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/phonenum/http/Request$Builder;->queryParams(Ljava/util/Map;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->makeUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/http/Request$Builder;->ua(Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/http/Request$Builder;->build()Lcom/xiaomi/phonenum/http/Request;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->httpFactory:Lcom/xiaomi/phonenum/http/HttpFactory;

    invoke-virtual {p2}, Lcom/xiaomi/phonenum/http/HttpFactory;->createHttpClient()Lcom/xiaomi/phonenum/http/HttpClient;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/xiaomi/phonenum/http/HttpClient;->excute(Lcom/xiaomi/phonenum/http/Request;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public obtainPhoneNumber(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->checkPermission()V

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->checkSimState(I)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v2, "ObtainHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**traceId**:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->param:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->requestPhoneNum(ILjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->isPhoneResponse(Lcom/xiaomi/phonenum/http/Response;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->parser:Lcom/xiaomi/phonenum/obtain/Parser;

    iget-object v1, v1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lcom/xiaomi/phonenum/obtain/Parser;->parse(ILjava/lang/String;)Lcom/xiaomi/phonenum/http/Response;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v0, "ObtainHandler"

    const-string v1, "parse response"

    invoke-interface {p2, v0, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->JSON:Lcom/xiaomi/phonenum/bean/Error;

    const-string v1, ""

    invoke-direct {p2, v0, v1, p1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    iget-object v1, v1, Lcom/xiaomi/phonenum/http/Response;->body:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->parsePhoneNumberResult(ILjava/lang/String;Ljava/lang/String;Lcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public setParser(Lcom/xiaomi/phonenum/obtain/Parser;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->parser:Lcom/xiaomi/phonenum/obtain/Parser;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->parser:Lcom/xiaomi/phonenum/obtain/Parser;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->parser:Lcom/xiaomi/phonenum/obtain/Parser;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/obtain/Parser;->setNext(Lcom/xiaomi/phonenum/obtain/Parser;)V

    :goto_0
    return-void
.end method
