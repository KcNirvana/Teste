.class Lcom/alipay/android/app/safepaybase/widget/d;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->f(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/a;->b(Lcom/alipay/android/app/safepaybase/widget/a;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/widget/a;->g(Lcom/alipay/android/app/safepaybase/widget/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/a;->h(Lcom/alipay/android/app/safepaybase/widget/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/a;->i(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/safepaybase/b/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/d;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/a;->f(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/safepaybase/b;->onUserConfirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
