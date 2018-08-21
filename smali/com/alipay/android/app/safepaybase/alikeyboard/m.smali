.class Lcom/alipay/android/app/safepaybase/alikeyboard/m;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/m;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
