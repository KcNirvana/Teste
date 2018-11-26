.class final Lcom/miui/securityscan/model/b;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic Bl:Lcom/miui/securityscan/model/ModelUpdater;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/model/ModelUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/b;->Bl:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter.action.ITEM_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/b;->Bl:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelUpdater;->BJ(Lcom/miui/securityscan/model/ModelUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securityscan/model/ModelUpdater;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ModelUpdater is downloading..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/securityscan/model/a;

    iget-object v1, p0, Lcom/miui/securityscan/model/b;->Bl:Lcom/miui/securityscan/model/ModelUpdater;

    iget-object v2, p0, Lcom/miui/securityscan/model/b;->Bl:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {v2}, Lcom/miui/securityscan/model/ModelUpdater;->BI(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/securityscan/model/a;-><init>(Lcom/miui/securityscan/model/ModelUpdater;Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securityscan/model/ModelUpdater;->BK()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/model/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
