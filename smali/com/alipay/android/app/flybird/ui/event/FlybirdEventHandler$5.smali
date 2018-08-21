.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;
.super Ljava/lang/Object;
.source "FlybirdEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/c;->b(I)Lcom/alipay/android/app/logic/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "LoginRepeatedCheck"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/logic/b;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getCurrentIFormShower()Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->checkLoginStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showLoading([Ljava/lang/String;)V

    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v0, 0x3ea

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->c:I

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$400(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)I

    move-result v0

    iput v0, v1, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$500(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$5;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0
.end method
