.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SecureFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;

    return-void
.end method
