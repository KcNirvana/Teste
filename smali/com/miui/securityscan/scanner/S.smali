.class final Lcom/miui/securityscan/scanner/S;
.super Lcom/miui/securityscan/scanner/r;
.source ""


# instance fields
.field final synthetic Fa:Lcom/miui/securityscan/scanner/j;

.field final synthetic Fb:Lcom/miui/securityscan/c/d;

.field final synthetic Fc:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/S;->Fa:Lcom/miui/securityscan/scanner/j;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/S;->Fb:Lcom/miui/securityscan/c/d;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/S;->Fc:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/r;-><init>()V

    return-void
.end method


# virtual methods
.method public ER()V
    .locals 0

    invoke-super {p0}, Lcom/miui/securityscan/scanner/r;->ER()V

    return-void
.end method

.method public ES()V
    .locals 4

    invoke-super {p0}, Lcom/miui/securityscan/scanner/r;->ES()V

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startOptimizeMemoryAfterScanMemory onFinishCleanup() callback"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/S;->Fa:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/T;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/S;->Fb:Lcom/miui/securityscan/c/d;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/S;->Fc:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/miui/securityscan/scanner/T;-><init>(Lcom/miui/securityscan/scanner/S;Lcom/miui/securityscan/c/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
