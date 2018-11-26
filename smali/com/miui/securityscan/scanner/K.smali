.class final Lcom/miui/securityscan/scanner/K;
.super Lcom/miui/securityscan/scanner/q;
.source ""


# instance fields
.field final synthetic EF:Lcom/miui/securityscan/scanner/j;

.field final synthetic EG:Z

.field final synthetic EH:Lcom/miui/securityscan/scanner/l;

.field final synthetic EI:Lcom/miui/securityscan/c/d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;ZLcom/miui/securityscan/scanner/l;Lcom/miui/securityscan/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/K;->EG:Z

    iput-object p3, p0, Lcom/miui/securityscan/scanner/K;->EH:Lcom/miui/securityscan/scanner/l;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/K;->EI:Lcom/miui/securityscan/c/d;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/q;-><init>()V

    return-void
.end method


# virtual methods
.method public EO()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ek(Lcom/miui/securityscan/scanner/j;)Z

    move-result v0

    return v0
.end method

.method public EP(Ljava/util/List;)V
    .locals 7

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanMemoryItem =============> onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/miui/securityscan/scanner/L;

    iget-boolean v3, p0, Lcom/miui/securityscan/scanner/K;->EG:Z

    iget-object v4, p0, Lcom/miui/securityscan/scanner/K;->EI:Lcom/miui/securityscan/c/d;

    iget-object v5, p0, Lcom/miui/securityscan/scanner/K;->EH:Lcom/miui/securityscan/scanner/l;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/scanner/L;-><init>(Lcom/miui/securityscan/scanner/K;Ljava/util/List;ZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/l;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public EQ()V
    .locals 8

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startScanMemoryItem -------------> onStartScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/K;->EG:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ei(Lcom/miui/securityscan/scanner/j;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->El(Lcom/miui/securityscan/scanner/j;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/securityscan/scanner/K;->EF:Lcom/miui/securityscan/scanner/j;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/scanner/PredictScanItem;->CL:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v5, Lcom/miui/securityscan/scanner/c;

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v6, v7, v0}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/K;->EH:Lcom/miui/securityscan/scanner/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/K;->EH:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_0
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "startScanMemoryItem onStartScan() callback InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
