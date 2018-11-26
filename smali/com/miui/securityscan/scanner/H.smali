.class final Lcom/miui/securityscan/scanner/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Er:Lcom/miui/securityscan/scanner/G;

.field final synthetic Es:Ljava/util/List;

.field final synthetic Et:Z

.field final synthetic Eu:Lcom/miui/securityscan/scanner/l;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/G;ILjava/util/List;ZLcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/H;->Er:Lcom/miui/securityscan/scanner/G;

    iput p2, p0, Lcom/miui/securityscan/scanner/H;->val$type:I

    iput-object p3, p0, Lcom/miui/securityscan/scanner/H;->Es:Ljava/util/List;

    iput-boolean p4, p0, Lcom/miui/securityscan/scanner/H;->Et:Z

    iput-object p5, p0, Lcom/miui/securityscan/scanner/H;->Eu:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/miui/securityscan/scanner/H;->val$type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/H;->Es:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/H;->Er:Lcom/miui/securityscan/scanner/G;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/H;->Es:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/B;->FM(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/H;->Et:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/H;->Er:Lcom/miui/securityscan/scanner/G;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CJ:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    sget-object v3, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/H;->Eu:Lcom/miui/securityscan/scanner/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/H;->Eu:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_1
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "startScanAutoItem onFinishScan()  InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/H;->Er:Lcom/miui/securityscan/scanner/G;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/G;->Eo:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->En(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/i;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/OptimizeItem;->CF:Lcom/miui/securityscan/scanner/OptimizeItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    sget-object v3, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/i;->DS(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
