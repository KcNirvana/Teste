.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;
.super Ljava/lang/Thread;
.source "FlybirdEventHandler.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdEventHandler.handleEvent.new Thread().run"

    const-string/jumbo v3, "MiniEventHandlerHelper wappay  start "

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "wappay"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v0, v0, v6

    const-string/jumbo v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "from_mcashier"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    :cond_1
    sget-object v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v2, "phonecashiermsp#flybird"

    const-string/jumbo v3, "FlybirdEventHandler.handleEvent.new Thread().run"

    const-string/jumbo v4, " MiniEventHandlerHelper wappay  wait "

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlybirdEventHandler.handleEvent.new Thread().run"

    const-string/jumbo v2, " MiniEventHandlerHelper wappay  notify "

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/pay/g;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$1;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
