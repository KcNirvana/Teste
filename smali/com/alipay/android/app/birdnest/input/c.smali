.class Lcom/alipay/android/app/birdnest/input/c;
.super Ljava/lang/Object;
.source "PasswordInputPlugin.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/input/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v2}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v2}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBPluginCtx;->getBodyView()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v2}, Lcom/alipay/android/app/birdnest/input/a;->b(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/c;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->c(Lcom/alipay/android/app/birdnest/input/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    goto :goto_0
.end method
