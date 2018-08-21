.class Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;
.super Ljava/lang/Object;
.source "FlybirdLocalViewNoPwdPasswordPage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/c;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/widget/EditText;)V

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$000(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Lcom/alipay/android/app/safepaybase/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/c;->b()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    iget-boolean v2, v2, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mSPassWordPay:Z

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    iget-object v3, v3, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->mLocalView:Landroid/view/View;

    const-string/jumbo v4, "setting_dialog_container"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    invoke-static {v4}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->access$100(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/birdnest/a;->a(Landroid/widget/EditText;ZLandroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
