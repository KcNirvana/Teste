.class public Lcom/ali/user/mobile/biz/k;
.super Ljava/lang/Object;
.source "ReportLocationServiceWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "ReportLocationServiceWrapper"

    const-string/jumbo v1, "report begin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "report_device_location_plugin"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/framework/a/a;->getServiceMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "REPORT_DEVICE_LOCATION_SERVICE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/framework/service/a;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/inside/framework/service/a;->start(Ljava/lang/Object;)V

    const-string/jumbo v0, "ReportLocationServiceWrapper"

    const-string/jumbo v1, "report end"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReportLocationServiceWrapper"

    const-string/jumbo v2, "report location error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
