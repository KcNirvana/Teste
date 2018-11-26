.class final Lcom/miui/securityscan/scanner/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fw:Lcom/miui/securityscan/scanner/x;

.field final synthetic Fx:Lcom/miui/securityscan/MainActivity;

.field final synthetic Fy:Lcom/miui/securityscan/scanner/c;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/x;Lcom/miui/securityscan/MainActivity;Lcom/miui/securityscan/scanner/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/aa;->Fw:Lcom/miui/securityscan/scanner/x;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/aa;->Fx:Lcom/miui/securityscan/MainActivity;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/aa;->Fy:Lcom/miui/securityscan/scanner/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/scanner/aa;->Fw:Lcom/miui/securityscan/scanner/x;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/x;->Fd(Lcom/miui/securityscan/scanner/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/aa;->Fx:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/aa;->Fx:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/aa;->Fy:Lcom/miui/securityscan/scanner/c;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/c;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HE(Lcom/miui/securityscan/scanner/OptimizeItem;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/aa;->Fx:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/aa;->Fy:Lcom/miui/securityscan/scanner/c;

    iget v2, v2, Lcom/miui/securityscan/scanner/c;->index:I

    mul-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/miui/securityscan/scanner/aa;->Fy:Lcom/miui/securityscan/scanner/c;

    iget v3, v3, Lcom/miui/securityscan/scanner/c;->Cz:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HB(Lcom/miui/securityscan/scanner/OptimizeItem;I)V

    :cond_0
    return-void
.end method
