.class final Lcom/miui/securityscan/scanner/G;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/e;


# instance fields
.field final synthetic Eo:Lcom/miui/securityscan/scanner/j;

.field final synthetic Ep:Z

.field final synthetic Eq:Lcom/miui/securityscan/scanner/l;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/G;->Ep:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/G;->Eq:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Gn(Ljava/util/List;I)V
    .locals 7

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanAutoItem =============> onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/miui/securityscan/scanner/H;

    iget-boolean v4, p0, Lcom/miui/securityscan/scanner/G;->Ep:Z

    iget-object v5, p0, Lcom/miui/securityscan/scanner/G;->Eq:Lcom/miui/securityscan/scanner/l;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/H;-><init>(Lcom/miui/securityscan/scanner/G;ILjava/util/List;ZLcom/miui/securityscan/scanner/l;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Go()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanAutoItem onInterrupted()  "

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eq:Lcom/miui/securityscan/scanner/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eq:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_0
    return-void
.end method

.method public Gp(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/G;->Ep:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->En(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/i;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/i;->DS(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/c;)V

    goto :goto_0
.end method

.method public Gq()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanAutoItem -------------> onStartScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
