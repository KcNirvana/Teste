.class final Lcom/miui/powercenter/quickoptimize/C;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aER:Lcom/miui/powercenter/quickoptimize/B;

.field final synthetic aES:Lcom/miui/securitycenter/memory/IMemoryCheck;

.field final synthetic aET:Lcom/miui/powercenter/quickoptimize/o;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/B;Lcom/miui/securitycenter/memory/IMemoryCheck;Lcom/miui/powercenter/quickoptimize/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/C;->aER:Lcom/miui/powercenter/quickoptimize/B;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/C;->aES:Lcom/miui/securitycenter/memory/IMemoryCheck;

    iput-object p3, p0, Lcom/miui/powercenter/quickoptimize/C;->aET:Lcom/miui/powercenter/quickoptimize/o;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/quickoptimize/C;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/powercenter/quickoptimize/D;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/C;->aET:Lcom/miui/powercenter/quickoptimize/o;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/quickoptimize/D;-><init>(Lcom/miui/powercenter/quickoptimize/C;Lcom/miui/powercenter/quickoptimize/o;)V

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/C;->aES:Lcom/miui/securitycenter/memory/IMemoryCheck;

    invoke-interface {v1, v0}, Lcom/miui/securitycenter/memory/IMemoryCheck;->bqc(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/C;->aER:Lcom/miui/powercenter/quickoptimize/B;

    iget-object v0, v0, Lcom/miui/powercenter/quickoptimize/B;->aEP:Lcom/miui/powercenter/quickoptimize/m;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/m;->aPt(Lcom/miui/powercenter/quickoptimize/m;)Lcom/miui/common/f/a;

    move-result-object v0

    const-string/jumbo v1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MemoryCheckManager"

    const-string/jumbo v2, "startScan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/C;->aET:Lcom/miui/powercenter/quickoptimize/o;

    invoke-interface {v0, v3}, Lcom/miui/powercenter/quickoptimize/o;->aPu(Ljava/util/List;)V

    goto :goto_0
.end method
