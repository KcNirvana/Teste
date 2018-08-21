.class Lcom/alipay/android/app/safepaybase/widget/c;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->e(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/c;->a:Lcom/alipay/android/app/safepaybase/widget/a;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/a;->e(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
