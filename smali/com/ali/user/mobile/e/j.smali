.class public Lcom/ali/user/mobile/e/j;
.super Ljava/lang/Object;
.source "TimeConsumingLogAgent.java"


# instance fields
.field private final a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "appId"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "appVersion"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/api/behavior/a;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p2, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p3, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "appId"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "appVersion"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 3

    const-string/jumbo v0, "netException"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/e/j;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/e/j;->b:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "facade"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/e/j;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b()Lcom/ali/user/mobile/e/j;
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ali/user/mobile/e/j;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ali/user/mobile/e/j;->c:J

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iget-wide v2, p0, Lcom/ali/user/mobile/e/j;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "timespan"

    iget-wide v2, p0, Lcom/ali/user/mobile/e/j;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/inside/log/api/behavior/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Lcom/alipay/android/phone/inside/log/api/behavior/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/e/j;->a:Lcom/alipay/android/phone/inside/log/api/behavior/a;

    iput-object p1, v0, Lcom/alipay/android/phone/inside/log/api/behavior/a;->i:Ljava/lang/String;

    return-object p0
.end method
