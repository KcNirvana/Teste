.class public Lcom/alipay/apmobilesecuritysdk/rpc/a/e;
.super Ljava/lang/Object;
.source "RpcManager.java"


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;


# instance fields
.field private b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

.field private c:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

.field private d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

.field private e:Lcom/alipay/android/phone/inside/log/api/c/a;

.field private f:Lcom/alipay/edge/face/EdgeRiskAnalyzer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->c:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->f:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "call RpcManager"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "RpcManager new RpcService() succ"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->c:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "RpcManager rpcService.getRpcProxy(BugTrackMessageService.class) succ"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RpcManager rpcService.getRpcProxy(ReportPBService4AndroidV7.class) succ"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->getInstance(Landroid/content/Context;)Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->f:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "RpcManager \u6784\u9020\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/rpc/a/e;
    .locals 2

    const-class v1, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;

    :cond_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->a:Lcom/alipay/apmobilesecuritysdk/rpc/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "security_sdk"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->f:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->postUserAction(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "APSecuritySdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "edgeRiskAnalyzer post ua "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " properties result is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;)Lcom/alipay/android/phone/inside/log/api/c/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "call updateStaticData"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    if-nez v0, :cond_3

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "data is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportPBService4AndroidV7;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "mDeviceFingerPrintService is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a(Lcom/alipay/apmobilesecuritysdk/rpc/a/d;)Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "ConvertUtil.convertFrom(data) null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v3, "APSecuritySdk"

    const-string/jumbo v4, "data encapsolute success, prepare to send data to server."

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;

    invoke-direct {v3, p0, v0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/f;-><init>(Lcom/alipay/apmobilesecuritysdk/rpc/a/e;Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportRequest;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_1
    iget-object v2, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    if-nez v2, :cond_5

    if-ltz v0, :cond_5

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0x32

    goto :goto_1

    :cond_5
    if-gez v0, :cond_6

    const-string/jumbo v0, "timeout"

    invoke-direct {p0, v0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v2, "APSecuritySdk"

    const-string/jumbo v3, "send request failed, prepare to parse server response data."

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    const-string/jumbo v1, "total"

    invoke-direct {p0, v1}, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->b(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->e:Lcom/alipay/android/phone/inside/log/api/c/a;

    const-string/jumbo v1, "APSecuritySdk"

    const-string/jumbo v2, "send request success, prepare to parse server response data."

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->d:Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/rpc/a/b;->a(Lcom/alipay/apmobilesecuritysdk/rpc/gen/ReportResult;)Lcom/alipay/apmobilesecuritysdk/rpc/a/c;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->c:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/e;->c:Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;

    invoke-static {p1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->textCompress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/apmobilesecuritysdk/rpc/gen/BugTrackMessageService;->logCollect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
