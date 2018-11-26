.class Lcom/miui/firstaidkit/e;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private random:Ljava/util/Random;

.field private uC:Ljava/util/concurrent/BlockingQueue;

.field private uD:Lcom/miui/firstaidkit/b/b;

.field final synthetic uE:Lcom/miui/firstaidkit/d;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/b/b;Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/firstaidkit/e;->uE:Lcom/miui/firstaidkit/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    iput-object p3, p0, Lcom/miui/firstaidkit/e;->uC:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/e;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/firstaidkit/e;->uE:Lcom/miui/firstaidkit/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/d;->wc(Lcom/miui/firstaidkit/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/e;->uC:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/e;->uC:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/c;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/miui/securityscan/scanner/c;->Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    sget-object v2, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/firstaidkit/e;->random:Ljava/util/Random;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/c;->DH()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/miui/firstaidkit/b/b;->vK(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/miui/firstaidkit/e;->uC:Ljava/util/concurrent/BlockingQueue;

    iput-object v4, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    invoke-interface {v1, v0}, Lcom/miui/firstaidkit/b/b;->vL(Lcom/miui/securityscan/scanner/c;)V

    :cond_3
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FetchEntryTask"

    const-string/jumbo v2, "FetchEntryTask InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    :try_start_2
    const-string/jumbo v0, "FetchEntryTask"

    const-string/jumbo v1, "FetchEntryTask blockingQueue poll timeout"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/e;->uD:Lcom/miui/firstaidkit/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/firstaidkit/b/b;->vK(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
