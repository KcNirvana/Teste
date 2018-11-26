.class final Lcom/miui/securityscan/scanner/I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/e;


# instance fields
.field final synthetic Ev:Lcom/miui/securityscan/scanner/j;

.field final synthetic Ew:Z

.field final synthetic Ex:Lcom/miui/securityscan/scanner/l;

.field final synthetic Ey:Lcom/miui/securityscan/c/d;

.field final synthetic Ez:Lcom/miui/securityscan/scanner/m;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/I;->Ew:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/I;->Ex:Lcom/miui/securityscan/scanner/l;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/I;->Ey:Lcom/miui/securityscan/c/d;

    iput-object p5, p0, Lcom/miui/securityscan/scanner/I;->Ez:Lcom/miui/securityscan/scanner/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Gn(Ljava/util/List;I)V
    .locals 8

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanSystemApps =============> onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/miui/securityscan/scanner/J;

    iget-boolean v3, p0, Lcom/miui/securityscan/scanner/I;->Ew:Z

    iget-object v4, p0, Lcom/miui/securityscan/scanner/I;->Ey:Lcom/miui/securityscan/c/d;

    iget-object v5, p0, Lcom/miui/securityscan/scanner/I;->Ez:Lcom/miui/securityscan/scanner/m;

    iget-object v6, p0, Lcom/miui/securityscan/scanner/I;->Ex:Lcom/miui/securityscan/scanner/l;

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/scanner/J;-><init>(Lcom/miui/securityscan/scanner/I;IZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/scanner/l;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Go()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ex:Lcom/miui/securityscan/scanner/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ex:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v0}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_0
    return-void
.end method

.method public Gp(IILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/miui/antivirus/model/VirusModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/B;->FN(I)V

    check-cast p3, Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/VirusModel;->art()Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/securityscan/scanner/B;->FO(Lcom/miui/antivirus/model/VirusModel;)V

    :cond_1
    new-instance v0, Lcom/miui/securityscan/scanner/c;

    invoke-virtual {p3}, Lcom/miui/antivirus/model/VirusModel;->getAppLabel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/I;->Ew:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/PredictScanItem;->CM:Lcom/miui/securityscan/scanner/PredictScanItem;

    invoke-virtual {v1, v2, v0}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/j;->En(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/i;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1, v2, v0}, Lcom/miui/securityscan/scanner/i;->DS(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/c;)V

    goto :goto_0
.end method

.method public Gq()V
    .locals 2

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanSystemApps -------------> onStartScan "

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
