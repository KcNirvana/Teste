.class final Lcom/miui/securityscan/scanner/P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/e;


# instance fields
.field final synthetic ET:Lcom/miui/securityscan/scanner/j;

.field final synthetic EU:Lcom/miui/securityscan/c/a;

.field final synthetic EV:Z


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/P;->ET:Lcom/miui/securityscan/scanner/j;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/P;->EV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Gn(Ljava/util/List;I)V
    .locals 4

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanManualItem =============> onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->ET:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/B;->FX(Ljava/util/List;)V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/P;->EV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->ET:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CK:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    sget-object v3, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JW()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JX()V

    goto :goto_0
.end method

.method public Go()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanManualItem =============> onInterrupted"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JX()V

    :cond_0
    return-void
.end method

.method public Gp(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->ET:Lcom/miui/securityscan/scanner/j;

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

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/P;->EV:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->ET:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CK:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V

    :cond_1
    return-void
.end method

.method public Gq()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanManualItem -------------> onStartScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/P;->EU:Lcom/miui/securityscan/c/a;

    invoke-interface {v0}, Lcom/miui/securityscan/c/a;->JY()V

    :cond_0
    return-void
.end method
