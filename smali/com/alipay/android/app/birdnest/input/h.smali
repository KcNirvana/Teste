.class Lcom/alipay/android/app/birdnest/input/h;
.super Ljava/lang/Object;
.source "PasswordInputPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/input/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/h;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/h;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/h;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->e(Lcom/alipay/android/app/birdnest/input/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    return-void
.end method
