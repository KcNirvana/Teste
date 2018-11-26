.class final Lcom/miui/powercenter/quickoptimize/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/common/f/b;


# instance fields
.field final synthetic aEW:Lcom/miui/powercenter/quickoptimize/m;

.field final synthetic aEX:Lcom/miui/powercenter/quickoptimize/n;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/m;Lcom/miui/powercenter/quickoptimize/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/E;->aEW:Lcom/miui/powercenter/quickoptimize/m;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/E;->aEX:Lcom/miui/powercenter/quickoptimize/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ed(Landroid/os/IBinder;)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/securitycenter/memory/IMemoryCheck;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/miui/securitycenter/memory/IMemoryCheck;->bpW()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/E;->aEX:Lcom/miui/powercenter/quickoptimize/n;

    invoke-interface {v1, v0}, Lcom/miui/powercenter/quickoptimize/n;->aOj(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/E;->aEW:Lcom/miui/powercenter/quickoptimize/m;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/m;->aPt(Lcom/miui/powercenter/quickoptimize/m;)Lcom/miui/common/f/a;

    move-result-object v0

    const-string/jumbo v1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MemoryCheckManager"

    const-string/jumbo v2, "getWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
