.class Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;
.super Ljava/lang/Object;
.source "FlybirdWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

.field final synthetic val$exception:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;->val$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "FlybirdWindowManager.alertAppError.new Runnable().run"

    const-string/jumbo v3, "alertAppError"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$100(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;->val$exception:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "mini_app_error"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string/jumbo v2, "msp_btn_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v3, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    sget v3, Lcom/alipay/android/app/statistic/f/a;->d:I

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setmLogFieldEndCode(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v4, v1, v2}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->access$200(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
