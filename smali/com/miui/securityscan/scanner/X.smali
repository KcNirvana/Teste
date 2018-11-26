.class final Lcom/miui/securityscan/scanner/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/f/b;


# instance fields
.field final synthetic Fn:Lcom/miui/securityscan/scanner/s;

.field final synthetic Fo:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

.field final synthetic Fp:Lcom/miui/securityscan/scanner/l;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/s;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/X;->Fn:Lcom/miui/securityscan/scanner/s;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/X;->Fo:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/X;->Fp:Lcom/miui/securityscan/scanner/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ed(Landroid/os/IBinder;)Z
    .locals 4

    const-string/jumbo v0, "CacheCheckManager"

    const-string/jumbo v1, "startScan: onGetBinder(IBinder service) callback"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/Y;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/X;->Fo:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/X;->Fp:Lcom/miui/securityscan/scanner/l;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/miui/securityscan/scanner/Y;-><init>(Lcom/miui/securityscan/scanner/X;Lcom/miui/optimizecenter/garbagecheck/IGarbageCheck;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/l;)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
