.class Lcom/alipay/apmobilesecuritysdk/rpc/a/f;
.super Ljava/lang/Object;
.source "RpcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;

.field final synthetic b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->a:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->a:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;

    invoke-interface {v1, v2}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;->reportData(Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    new-instance v2, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    invoke-direct {v2}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;-><init>()V

    invoke-static {v1, v2}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->success:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "static data rpc upload error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;->resultCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;->b:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->c(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
