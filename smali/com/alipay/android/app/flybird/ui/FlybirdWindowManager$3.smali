.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$lastSubmitJson:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->val$lastSubmitJson:Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdWindowManager.alertNetError.new Runnable().run"

    const-string/jumbo v3, "alertNetError"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$300(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hidePrePageLoading()V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$400(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->val$msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "mini_net_error_weak"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v2, "mini_cancel"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mini_redo"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    sget v4, Lcom/alipay/android/app/statistic/f/a;->m:I

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setmLogFieldEndCode(I)V

    sget-object v4, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->val$lastSubmitJson:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->val$lastSubmitJson:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v7}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->setParams([Ljava/lang/String;)V

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v6, v2, v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    new-instance v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v3, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-direct {v2, v1, v3}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$500(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v5}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
