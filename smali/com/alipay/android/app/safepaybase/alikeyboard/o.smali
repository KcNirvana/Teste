.class Lcom/alipay/android/app/safepaybase/alikeyboard/o;
.super Ljava/lang/Object;
.source "SecureQwertyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->c(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->d(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Landroid/speech/tts/TextToSpeech;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Z)V

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->e(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/o;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;Z)V

    :cond_0
    return-void
.end method
