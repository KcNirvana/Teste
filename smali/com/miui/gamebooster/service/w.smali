.class final Lcom/miui/gamebooster/service/w;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.FREEFORM_WINDOW_CLOSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oB(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)Lcom/miui/gamebooster/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/a/k;->fH()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameBoxWindowManagerService"

    const-string/jumbo v1, "window_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oG(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GameBoxWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "config_change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oE(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oE(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oF(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/w;->mY:Lcom/miui/gamebooster/service/GameBoxWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoxWindowManagerService;->oH(Lcom/miui/gamebooster/service/GameBoxWindowManagerService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
