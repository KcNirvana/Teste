.class Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;
.super Ljava/lang/Object;
.source "FlybirdLocalViewActivityAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

.field final synthetic val$iconString:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$iconString:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$iconString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$iconString:Ljava/lang/String;

    const-string/jumbo v1, "succ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "mini_icon_ok"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->showToast(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$iconString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$iconString:Ljava/lang/String;

    const-string/jumbo v1, "fail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "mini_icon_fail"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->showToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->access$100(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->showTextToastCenter(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
