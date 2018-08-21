.class Lcom/alipay/android/app/safepaybase/widget/b;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/a;->b(Lcom/alipay/android/app/safepaybase/widget/a;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/safepaybase/b/b;->a(ILjava/lang/String;III)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->d(Lcom/alipay/android/app/safepaybase/widget/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "#108ee9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/b;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method
