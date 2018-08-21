.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/d$a;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 4

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->val$currentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->toUnregisterReceiver()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpPayDlgCancel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0009\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpPayDlgToPwd"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"status\":\"0004\"}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$700(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8$1;->this$1:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$8;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const-string/jumbo v1, "fp"

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v3, "{\"action\":{\"name\":\"loc:back\"}}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->executeEvent(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
