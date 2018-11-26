.class final Lcom/miui/securityscan/scanner/R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EY:Lcom/miui/securityscan/scanner/Q;

.field final synthetic EZ:Lcom/miui/securityscan/c/d;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/Q;Lcom/miui/securityscan/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/R;->EY:Lcom/miui/securityscan/scanner/Q;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/R;->EZ:Lcom/miui/securityscan/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/R;->EZ:Lcom/miui/securityscan/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/R;->EZ:Lcom/miui/securityscan/c/d;

    invoke-virtual {v0}, Lcom/miui/securityscan/c/d;->JZ()V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/miui/securityscan/scanner/c;

    sget-object v1, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Dg:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/c;-><init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/R;->EY:Lcom/miui/securityscan/scanner/Q;

    iget-object v1, v1, Lcom/miui/securityscan/scanner/Q;->EW:Lcom/miui/securityscan/scanner/j;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/j;->En(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/i;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/scanner/OptimizeItem;->CE:Lcom/miui/securityscan/scanner/OptimizeItem;

    invoke-virtual {v1, v2, v0}, Lcom/miui/securityscan/scanner/i;->DS(Lcom/miui/securityscan/scanner/OptimizeItem;Lcom/miui/securityscan/scanner/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
