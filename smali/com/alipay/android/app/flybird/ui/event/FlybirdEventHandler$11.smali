.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setmIsFromLocalEvent(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$11;->val$type:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/b;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method
