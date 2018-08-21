.class public Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;
.super Ljava/lang/Object;
.source "PhoneCashierPlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/a/a;


# static fields
.field public static final KEY_SERVICE_GET_TID:Ljava/lang/String; = "com.alipay.android.phone.inside.PHONE_CASHIER_GET_TID"

.field public static final KEY_SERVICE_PAY:Ljava/lang/String; = "com.alipay.android.phone.inside.PHONE_CASHIER_PAY"

.field public static final KEY_SERVICE_RESET_TID:Ljava/lang/String; = "com.alipay.android.phone.inside.PHONE_CASHIER_RESET_TID"

.field public static final KEY_SERVICE_UP_CODE_CONFIG:Ljava/lang/String; = "com.alipay.android.phone.inside.PHONE_CASHIER_UP_CODE_CONFIG"

.field static final TAG:Ljava/lang/String; = "inside"


# instance fields
.field private mServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initializeService()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "PhoneCashierPlugin::initializeService"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.inside.PHONE_CASHIER_PAY"

    new-instance v2, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.inside.PHONE_CASHIER_GET_TID"

    new-instance v2, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceGetTid;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceGetTid;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.inside.PHONE_CASHIER_RESET_TID"

    new-instance v2, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceTidReset;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceTidReset;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    const-string/jumbo v1, "com.alipay.android.phone.inside.PHONE_CASHIER_UP_CODE_CONFIG"

    new-instance v2, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceUpCodeConfig;

    invoke-direct {v2}, Lcom/alipay/android/phone/inside/cashier/service/InsideServiceUpCodeConfig;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhoneCashierPlugin::getService key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->initializeService()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/framework/service/a;

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhoneCashierPlugin::getService service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServiceMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "PhoneCashierPlugin::getServiceMap"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->initializeService()V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/PhoneCashierPlugin;->mServiceMap:Ljava/util/Map;

    return-object v0
.end method

.method public onRegisted(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "PhoneCashierPlugin::onRegisted"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnRegisted(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside"

    const-string/jumbo v2, "PhoneCashierPlugin::onUnRegisted"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
