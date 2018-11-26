.class final Lcom/miui/securityscan/scanner/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/f;


# instance fields
.field final synthetic EW:Lcom/miui/securityscan/scanner/j;

.field final synthetic EX:Lcom/miui/securityscan/c/d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;Lcom/miui/securityscan/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/Q;->EW:Lcom/miui/securityscan/scanner/j;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/Q;->EX:Lcom/miui/securityscan/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Gr()V
    .locals 3

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v1, "startOptimizeSystemAppAfterScanSystem onFinishOptimize() callback"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/Q;->EW:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Em(Lcom/miui/securityscan/scanner/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/R;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/Q;->EX:Lcom/miui/securityscan/c/d;

    invoke-direct {v1, p0, v2}, Lcom/miui/securityscan/scanner/R;-><init>(Lcom/miui/securityscan/scanner/Q;Lcom/miui/securityscan/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
