.class Lcom/alipay/android/app/safepaybase/widget/e;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/e;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/safepaybase/b/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/e;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$10(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/e;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$10(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
