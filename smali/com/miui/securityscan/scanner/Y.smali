.class final Lcom/miui/securityscan/scanner/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fq:Lcom/miui/securityscan/scanner/X;

.field final synthetic Fr:Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

.field final synthetic Fs:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

.field final synthetic Ft:Lcom/miui/securityscan/scanner/l;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/X;Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/Y;->Fq:Lcom/miui/securityscan/scanner/X;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/Y;->Fr:Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/Y;->Fs:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/Y;->Ft:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/Y;->Fr:Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "CacheCheckManager"

    const-string/jumbo v1, "startScan: garbageCheck startScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/Y;->Fr:Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/Y;->Fs:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    invoke-interface {v0, v1}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;->bvV(Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/Y;->Ft:Lcom/miui/securityscan/scanner/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/scanner/Y;->Ft:Lcom/miui/securityscan/scanner/l;

    invoke-interface {v1}, Lcom/miui/securityscan/scanner/l;->DP()V

    :cond_1
    const-string/jumbo v1, "CacheCheckManager"

    const-string/jumbo v2, "startScan: RemoteException"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
