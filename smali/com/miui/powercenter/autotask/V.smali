.class final Lcom/miui/powercenter/autotask/V;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aMo:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/V;->aMo:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/V;->aMo:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/V;->aMo:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method
