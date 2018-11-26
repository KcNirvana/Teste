.class final Lcom/miui/securityscan/scanner/ac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FB:Lcom/miui/securityscan/scanner/A;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/A;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/A;->Fv(Lcom/miui/securityscan/scanner/A;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/A;->Fw(Lcom/miui/securityscan/scanner/A;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/A;->Fw(Lcom/miui/securityscan/scanner/A;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->apM([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I

    move-result v0

    invoke-static {v1, v0}, Lcom/miui/securityscan/scanner/A;->Fy(Lcom/miui/securityscan/scanner/A;I)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/A;->Fx(Lcom/miui/securityscan/scanner/A;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/A;->Fx(Lcom/miui/securityscan/scanner/A;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/A;->Fr(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    const-string/jumbo v0, "SystemCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GPObserver taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/ac;->FB:Lcom/miui/securityscan/scanner/A;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/A;->Fx(Lcom/miui/securityscan/scanner/A;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SystemCheckManager"

    const-string/jumbo v2, "GPObserver RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
