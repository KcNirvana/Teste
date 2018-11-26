.class final Lcom/miui/securityscan/scanner/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EA:Lcom/miui/securityscan/scanner/I;

.field final synthetic EB:Z

.field final synthetic EC:Lcom/miui/securityscan/c/d;

.field final synthetic ED:Lcom/miui/securityscan/scanner/m;

.field final synthetic EE:Lcom/miui/securityscan/scanner/l;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/I;IZLcom/miui/securityscan/c/d;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iput p2, p0, Lcom/miui/securityscan/scanner/J;->val$type:I

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/J;->EB:Z

    iput-object p4, p0, Lcom/miui/securityscan/scanner/J;->EC:Lcom/miui/securityscan/c/d;

    iput-object p5, p0, Lcom/miui/securityscan/scanner/J;->ED:Lcom/miui/securityscan/scanner/m;

    iput-object p6, p0, Lcom/miui/securityscan/scanner/J;->EE:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/miui/securityscan/scanner/J;->val$type:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FP()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FQ()V

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/J;->EB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eo(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/f;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/scanner/PredictScanItem;->CM:Lcom/miui/securityscan/scanner/PredictScanItem;

    new-instance v2, Lcom/miui/securityscan/scanner/c;

    sget-object v3, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v2, v3}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/f;->DM(Lcom/miui/securityscan/scanner/PredictScanItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/J;->EE:Lcom/miui/securityscan/scanner/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/J;->EE:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_0
    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "startScanSystemApps onFinishScan()  InterruptedException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FR()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/J;->EA:Lcom/miui/securityscan/scanner/I;

    iget-object v1, v1, Lcom/miui/securityscan/scanner/I;->Ev:Lcom/miui/securityscan/scanner/j;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/J;->EC:Lcom/miui/securityscan/c/d;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/J;->ED:Lcom/miui/securityscan/scanner/m;

    invoke-static {v1, v2, v0, v3}, Lcom/miui/securityscan/scanner/j;->Es(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;Lcom/miui/securityscan/scanner/m;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
