.class public abstract Lcom/xiaomi/mipush/sdk/av;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V
    .locals 0

    return-void
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V
    .locals 0

    return-void
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;

    invoke-direct {v0, p2, p0}, Lcom/xiaomi/mipush/sdk/MessageHandleService$a;-><init>(Landroid/content/Intent;Lcom/xiaomi/mipush/sdk/av;)V

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MessageHandleService;->a(Lcom/xiaomi/mipush/sdk/MessageHandleService$a;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eventMessageType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a/g;

    move-result-object v1

    const/16 v2, 0x7d3

    const-string v3, "receive passThough message broadcast"

    invoke-virtual {v1, p2, v2, v3}, Lcom/xiaomi/push/service/a/g;->a(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/b/a/d/h;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/h;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/aw;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/aw;-><init>(Lcom/xiaomi/mipush/sdk/av;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/b/a/d/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceiveMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/af;)V
    .locals 0

    return-void
.end method

.method public onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/ae;)V
    .locals 0

    return-void
.end method
