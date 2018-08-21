.class Lcom/alipay/android/app/safepaybase/alikeyboard/n;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v1, 0x8000

    const/4 v2, 0x1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p2, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    const-string/jumbo v1, "key_ABC"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getId()I

    move-result v0

    const-string/jumbo v1, "key_123"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/n;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Ljava/lang/String;)V

    goto :goto_0
.end method
