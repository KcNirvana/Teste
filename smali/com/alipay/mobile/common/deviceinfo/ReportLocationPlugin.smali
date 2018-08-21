.class public Lcom/alipay/mobile/common/deviceinfo/ReportLocationPlugin;
.super Ljava/lang/Object;
.source "ReportLocationPlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/a/a;


# static fields
.field private static final REPORT_SERVICE_NAME:Ljava/lang/String; = "REPORT_DEVICE_LOCATION_SERVICE"

.field private static final TAG:Ljava/lang/String; = "ReportLocationPlugin"


# instance fields
.field private mServices:Ljava/util/Map;
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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/ReportLocationPlugin;->mServices:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/common/deviceinfo/ReportLocationPluginService;

    invoke-direct {v0}, Lcom/alipay/mobile/common/deviceinfo/ReportLocationPluginService;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/ReportLocationPlugin;->mServices:Ljava/util/Map;

    const-string/jumbo v2, "REPORT_DEVICE_LOCATION_SERVICE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ReportLocationPlugin"

    const-string/jumbo v2, "ReportLocationPlugin plugin constructor"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceMap()Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/ReportLocationPlugin;->mServices:Ljava/util/Map;

    return-object v0
.end method

.method public onRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUnRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
