.class Lcom/alipay/mobile/common/deviceinfo/c;
.super Ljava/lang/Object;
.source "ReportLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alipay/mobile/common/deviceinfo/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/deviceinfo/b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    iput-object p2, p0, Lcom/alipay/mobile/common/deviceinfo/c;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/b/b;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/b;

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/b/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/b/a;

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/b;->b(Lcom/alipay/mobile/common/deviceinfo/b;)Lcom/alipay/mobile/common/deviceinfo/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    iget-object v2, p0, Lcom/alipay/mobile/common/deviceinfo/c;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/b;Ljava/util/Map;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/deviceinfo/a/a;->a(Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationReqPbPB;)Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ReportLocationService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "report location rpc end,result : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/deviceinfo/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/common/deviceinfo/a;

    move-result-object v0

    const-string/jumbo v2, ".LocationCfg"

    const-string/jumbo v3, "unifylogin$"

    iget-object v4, v1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/alipay/mobile/common/deviceinfo/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/deviceinfo/c;->b:Lcom/alipay/mobile/common/deviceinfo/b;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/deviceinfo/b;->a(Lcom/alipay/mobile/common/deviceinfo/b;Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;->success:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " clientConfig="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;->clientReportConfig:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " errormsg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/alipay/mobile/common/deviceinfo/model/DeviceLocationResPbPB;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ReportLocationService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
