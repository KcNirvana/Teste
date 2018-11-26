.class final Lcom/miui/securitycenter/service/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aXU:Lcom/miui/securitycenter/service/a;

.field final synthetic aXV:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/a;Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/c;->aXU:Lcom/miui/securitycenter/service/a;

    iput-object p2, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2}, Lcom/miui/securitycenter/service/NotificationService;->brn(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v6}, Lcom/miui/securitycenter/service/NotificationService;->brm(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "memDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", timeDiff : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v4}, Lcom/miui/securitycenter/service/NotificationService;->brn(Lcom/miui/securitycenter/service/NotificationService;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "cycle_memory"

    invoke-static {v2}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    iget-object v2, p0, Lcom/miui/securitycenter/service/c;->aXV:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v2, v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brv(Lcom/miui/securitycenter/service/NotificationService;J)J

    :cond_1
    iget-object v0, p0, Lcom/miui/securitycenter/service/c;->aXU:Lcom/miui/securitycenter/service/a;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/securitycenter/service/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
