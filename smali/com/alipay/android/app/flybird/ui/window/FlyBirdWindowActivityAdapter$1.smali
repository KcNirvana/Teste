.class Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;
.super Ljava/lang/Object;
.source "FlyBirdWindowActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

.field final synthetic val$message:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->val$message:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "mini_loading"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->val$message:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->val$message:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->val$message:[Ljava/lang/String;

    aget-object v0, v0, v5

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->getProgressMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->dismissLoading()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget-object v3, v3, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    iget v4, v4, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->mBizId:I

    invoke-direct {v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$002(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->cancalToast()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->access$000(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
