.class public Lcom/ali/user/mobile/e/h;
.super Ljava/lang/Object;
.source "PerformanceLogAgent.java"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ali/user/mobile/e/h;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/e/h;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/e/h;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/e/h;->b:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/e/h;->b:Z

    return-void
.end method

.method public b()V
    .locals 10

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/ali/user/mobile/e/h;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v9, p0, Lcom/ali/user/mobile/e/h;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ali/user/mobile/e/h;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getPerfLogger()Lcom/alipay/android/phone/inside/log/api/b/a;

    move-result-object v2

    const-string/jumbo v3, "MainLinkRecord"

    const-string/jumbo v4, "LINK_LOGIN"

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PHASE_LINK_LOGIN_RPC="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alipay/android/phone/inside/log/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
