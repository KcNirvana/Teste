.class final Lcom/miui/securityscan/scanner/ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FA:Lcom/miui/securityscan/MainActivity;

.field final synthetic Fz:Lcom/miui/securityscan/scanner/x;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/x;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ab;->Fz:Lcom/miui/securityscan/scanner/x;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/ab;->FA:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ab;->Fz:Lcom/miui/securityscan/scanner/x;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/x;->Fd(Lcom/miui/securityscan/scanner/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/OptimizeItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ab;->FA:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ab;->FA:Lcom/miui/securityscan/MainActivity;

    iget-object v1, v1, Lcom/miui/securityscan/MainActivity;->Mu:Lcom/miui/securityscan/ui/main/OptimizingBar;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/ui/main/OptimizingBar;->HC(Lcom/miui/securityscan/scanner/OptimizeItem;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ab;->FA:Lcom/miui/securityscan/MainActivity;

    invoke-static {v1, v0}, Lcom/miui/securityscan/utils/o;->JO(Landroid/content/Context;Lcom/miui/securityscan/scanner/OptimizeItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/OptimizeItem;->DN(Ljava/lang/String;)V

    const-string/jumbo v0, "PopOptimizeEntryListener"

    const-string/jumbo v1, "PopOptimizeEntryListener  onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ab;->FA:Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->Nc()V

    :cond_0
    return-void
.end method
