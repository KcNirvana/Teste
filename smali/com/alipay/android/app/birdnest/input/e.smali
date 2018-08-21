.class Lcom/alipay/android/app/birdnest/input/e;
.super Ljava/lang/Object;
.source "PasswordInputPlugin.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/input/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/e;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    move v0, v1

    :goto_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spwd_iv_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/birdnest/input/e;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v4}, Lcom/alipay/android/app/birdnest/input/a;->i(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ge v0, v2, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/e;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->i(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/e;->a:Lcom/alipay/android/app/birdnest/input/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/input/a;->i(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
