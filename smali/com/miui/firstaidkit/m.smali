.class final Lcom/miui/firstaidkit/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/firstaidkit/b/a;


# instance fields
.field final synthetic vt:Lcom/miui/firstaidkit/d;

.field final synthetic vu:Lcom/miui/firstaidkit/f;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/d;Lcom/miui/firstaidkit/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    iput-object p2, p0, Lcom/miui/firstaidkit/m;->vu:Lcom/miui/firstaidkit/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vH()V
    .locals 0

    return-void
.end method

.method public vI(IILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/d;->wc(Lcom/miui/firstaidkit/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/d;->wf(Lcom/miui/firstaidkit/d;)Lcom/miui/firstaidkit/b;

    move-result-object v0

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/securityscan/scanner/c;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/firstaidkit/b;->vO(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Lcom/miui/securityscan/scanner/c;)V

    return-void
.end method

.method public vJ(Ljava/util/List;II)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/d;->we(Lcom/miui/firstaidkit/d;)Lcom/miui/firstaidkit/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/firstaidkit/k;->wR(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/d;->wd(Lcom/miui/firstaidkit/d;)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/miui/firstaidkit/d;->wg(Lcom/miui/firstaidkit/d;I)I

    new-instance v0, Lcom/miui/securityscan/scanner/c;

    sget-object v1, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v0, v1, p3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;I)V

    iget-object v1, p0, Lcom/miui/firstaidkit/m;->vt:Lcom/miui/firstaidkit/d;

    invoke-static {v1}, Lcom/miui/firstaidkit/d;->wf(Lcom/miui/firstaidkit/d;)Lcom/miui/firstaidkit/b;

    move-result-object v1

    sget-object v2, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-virtual {v1, v2, v0}, Lcom/miui/firstaidkit/b;->vO(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;Lcom/miui/securityscan/scanner/c;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vu:Lcom/miui/firstaidkit/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/m;->vu:Lcom/miui/firstaidkit/f;

    sget-object v1, Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;->ur:Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;

    invoke-interface {v0, v1}, Lcom/miui/firstaidkit/f;->wh(Lcom/miui/firstaidkit/FirstAidKitOptimizeItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FirstAidKitManager"

    const-string/jumbo v2, "startScanPerformance"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
