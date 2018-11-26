.class public Lcom/miui/securityscan/c/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/c/a;


# instance fields
.field private final Jz:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/c/g;->Jz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public JW()V
    .locals 3

    const-string/jumbo v0, "ScanOptimizeSecurityCallback"

    const-string/jumbo v1, "mSecurityCallback onFinishScanManualItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/c/g;->Jz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/c/n;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/c/n;-><init>(Lcom/miui/securityscan/c/g;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public JX()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/c/g;->Jz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->MD()V

    :cond_0
    return-void
.end method

.method public JY()V
    .locals 3

    const-string/jumbo v0, "ScanOptimizeSecurityCallback"

    const-string/jumbo v1, "mSecurityCallback onStartScanManualItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/c/g;->Jz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    new-instance v2, Lcom/miui/securityscan/c/m;

    invoke-direct {v2, p0, v0}, Lcom/miui/securityscan/c/m;-><init>(Lcom/miui/securityscan/c/g;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/scanner/w;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
