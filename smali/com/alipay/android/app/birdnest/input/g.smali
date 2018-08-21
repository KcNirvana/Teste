.class Lcom/alipay/android/app/birdnest/input/g;
.super Ljava/lang/Object;
.source "PasswordInputPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/android/app/birdnest/input/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/input/a;Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/g;->e:Lcom/alipay/android/app/birdnest/input/a;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/input/g;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alipay/android/app/birdnest/input/g;->b:Z

    iput-object p4, p0, Lcom/alipay/android/app/birdnest/input/g;->c:Landroid/view/View;

    iput-boolean p5, p0, Lcom/alipay/android/app/birdnest/input/g;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/alipay/android/app/birdnest/input/g;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/g;->e:Lcom/alipay/android/app/birdnest/input/a;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/g;->c:Landroid/view/View;

    invoke-static {v0, v4, v1}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/g;->e:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/g;->e:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->e(Lcom/alipay/android/app/birdnest/input/a;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/g;->e:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v2}, Lcom/alipay/android/app/birdnest/input/a;->g(Lcom/alipay/android/app/birdnest/input/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/birdnest/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/input/g;->c:Landroid/view/View;

    iget-boolean v5, p0, Lcom/alipay/android/app/birdnest/input/g;->d:Z

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
