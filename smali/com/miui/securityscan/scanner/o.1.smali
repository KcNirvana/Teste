.class Lcom/miui/securityscan/scanner/o;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field private Di:Ljava/util/concurrent/BlockingQueue;

.field private Dj:Z

.field private Dk:Lcom/miui/securityscan/scanner/OptimizeItem;

.field private Dl:Lcom/miui/securityscan/scanner/k;

.field final synthetic Dm:Lcom/miui/securityscan/scanner/j;

.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/j;Ljava/lang/String;Lcom/miui/securityscan/scanner/k;Ljava/util/concurrent/BlockingQueue;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/o;-><init>(Lcom/miui/securityscan/scanner/j;Ljava/lang/String;Lcom/miui/securityscan/scanner/k;Ljava/util/concurrent/BlockingQueue;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/j;Ljava/lang/String;Lcom/miui/securityscan/scanner/k;Ljava/util/concurrent/BlockingQueue;Z)V
    .locals 3

    iput-object p1, p0, Lcom/miui/securityscan/scanner/o;->Dm:Lcom/miui/securityscan/scanner/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/scanner/o;->action:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/o;->Di:Ljava/util/concurrent/BlockingQueue;

    iput-boolean p5, p0, Lcom/miui/securityscan/scanner/o;->Dj:Z

    const-string/jumbo v1, "SecurityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FetchEntryTask blockingQueue == null ? : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Di:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public EB(Lcom/miui/securityscan/scanner/OptimizeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/o;->Dk:Lcom/miui/securityscan/scanner/OptimizeItem;

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k;->Ex()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dm:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Di:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dm:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ej(Lcom/miui/securityscan/scanner/j;)Lcom/miui/common/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k;->Ev()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/miui/securityscan/scanner/o;->Di:Ljava/util/concurrent/BlockingQueue;

    iput-object v4, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Di:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/c;

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/miui/securityscan/scanner/c;->Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    sget-object v2, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k;->Ev()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "FetchEntryTask InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    invoke-interface {v1, v0}, Lcom/miui/securityscan/scanner/k;->Ew(Lcom/miui/securityscan/scanner/c;)V

    :cond_4
    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/o;->Dj:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->Dk:Lcom/miui/securityscan/scanner/OptimizeItem;

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    if-ne v1, v2, :cond_5

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/miui/securityscan/scanner/o;->Dk:Lcom/miui/securityscan/scanner/OptimizeItem;

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/miui/securityscan/scanner/c;->Cz:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/miui/securityscan/scanner/c;->Cz:I

    const/16 v1, 0x7d0

    div-int v0, v1, v0

    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "FetchEntryTask blockingQueue poll timeout"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/o;->Dl:Lcom/miui/securityscan/scanner/k;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/k;->Ev()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
