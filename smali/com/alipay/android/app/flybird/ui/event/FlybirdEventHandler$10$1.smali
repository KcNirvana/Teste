.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/d$a;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 5

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$1000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v3, v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "flybird_verifying"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$1100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v1, v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$1100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0009\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0005\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$10;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "bl"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"action\":{\"name\":\"loc:back\"}}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
