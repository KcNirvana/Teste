.class final Lcom/miui/powercenter/quickoptimize/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/f/b;


# instance fields
.field final synthetic aEP:Lcom/miui/powercenter/quickoptimize/m;

.field final synthetic aEQ:Lcom/miui/powercenter/quickoptimize/o;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/m;Lcom/miui/powercenter/quickoptimize/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/B;->aEP:Lcom/miui/powercenter/quickoptimize/m;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/B;->aEQ:Lcom/miui/powercenter/quickoptimize/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ed(Landroid/os/IBinder;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCheck;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/powercenter/quickoptimize/C;

    iget-object v2, p0, Lcom/miui/powercenter/quickoptimize/B;->aEQ:Lcom/miui/powercenter/quickoptimize/o;

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/powercenter/quickoptimize/C;-><init>(Lcom/miui/powercenter/quickoptimize/B;Lcom/miui/securitycenter/memory/IMemoryCheck;Lcom/miui/powercenter/quickoptimize/o;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/powercenter/quickoptimize/C;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v0, "MemoryCheckManager"

    const-string/jumbo v1, "memoryCheck == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/B;->aEQ:Lcom/miui/powercenter/quickoptimize/o;

    invoke-interface {v0, v2}, Lcom/miui/powercenter/quickoptimize/o;->aPu(Ljava/util/List;)V

    goto :goto_0
.end method
