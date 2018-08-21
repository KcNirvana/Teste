.class Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;
.super Ljava/lang/Thread;
.source "FlybirdEventHandler.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

.field final synthetic val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field final synthetic val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->val$args:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getActionParams()[Ljava/lang/String;

    move-result-object v3

    aget-object v7, v3, v4

    const-string/jumbo v2, "\u670d\u52a1\u534f\u8bae"

    array-length v5, v3

    if-le v5, v0, :cond_a

    aget-object v2, v3, v0

    move-object v6, v2

    :goto_0
    if-eqz v7, :cond_1

    const-string/jumbo v2, "alipays://"

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/sys/b;->b(Z)V

    array-length v2, v3

    if-le v2, v8, :cond_9

    aget-object v0, v3, v8

    invoke-static {v0}, Lcom/alipay/android/app/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "exitact"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "exitact"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string/jumbo v2, "succact"

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v5, "succact"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "name"

    invoke-virtual {v2, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string/jumbo v5, "method"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "method"

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    move-object v5, v0

    move v0, v4

    :goto_5
    invoke-static {v4}, Lcom/alipay/android/app/pay/g;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alipay/android/app/sys/b;->b(Z)V

    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v8}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$000(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v8, "url"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "title"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "openweb"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "backisexit"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "method"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->val$currentIFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0, v4, v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V

    sget-object v3, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v4, "phonecashiermsp#flybird"

    const-string/jumbo v6, "FlybirdEventHandler.handleEvent.new Thread().run"

    const-string/jumbo v7, " MiniEventHandlerHelper wappay  wait "

    invoke-static {v0, v4, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/alipay/android/app/pay/g;->b()Z

    move-result v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->getCurrentDefaultWindow()Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$100(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"action\":{\"name\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\"}}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\"action\":{\"name\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    if-eqz v0, :cond_5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler$2;->this$0:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-static {v0, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->access$200(Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move-object v3, v1

    goto/16 :goto_4

    :cond_7
    move-object v2, v1

    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_2

    :cond_9
    move-object v3, v1

    move-object v2, v1

    move-object v5, v1

    goto/16 :goto_5

    :cond_a
    move-object v6, v2

    goto/16 :goto_0
.end method
