.class final Lcom/miui/securityscan/scanner/L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EJ:Lcom/miui/securityscan/scanner/K;

.field final synthetic EK:Ljava/util/List;

.field final synthetic EL:Z

.field final synthetic EM:Lcom/miui/securityscan/c/d;

.field final synthetic EN:Lcom/miui/securityscan/scanner/l;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/K;Ljava/util/List;ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/L;->EK:Ljava/util/List;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/L;->EL:Z

    iput-object p4, p0, Lcom/miui/securityscan/scanner/L;->EM:Lcom/miui/securityscan/c/d;

    iput-object p5, p0, Lcom/miui/securityscan/scanner/L;->EN:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/L;->EK:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/L;->EK:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->bpz()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/securitycenter/memory/a;->setChecked(Z)V

    :goto_1
    iget-object v2, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/scanner/B;->FS(Lcom/miui/securitycenter/memory/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/miui/securitycenter/memory/a;->setChecked(Z)V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FT()V

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/L;->EL:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/L;->EM:Lcom/miui/securityscan/c/d;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/B;->FU()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/scanner/j;->Er(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/scanner/L;->EJ:Lcom/miui/securityscan/scanner/K;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CL:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    sget-object v3, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/L;->EN:Lcom/miui/securityscan/scanner/l;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/securityscan/scanner/L;->EN:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_3
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "startScanMemoryItem onFinishScan() callback InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
