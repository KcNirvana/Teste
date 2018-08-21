.class Lcom/alipay/android/app/birdnest/input/d;
.super Ljava/lang/Object;
.source "PasswordInputPlugin.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/input/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->d(Lcom/alipay/android/app/birdnest/input/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->e(Lcom/alipay/android/app/birdnest/input/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->f(Lcom/alipay/android/app/birdnest/input/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1, v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->g(Lcom/alipay/android/app/birdnest/input/a;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "month"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/birdnest/input/a;->getNode()J

    move-result-wide v2

    const-string/jumbo v4, "/"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnInput(JLjava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->h(Lcom/alipay/android/app/birdnest/input/a;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/input/a;->a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/d;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {v2}, Lcom/alipay/android/app/birdnest/input/a;->getNode()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnInput(JLjava/lang/String;)I

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
