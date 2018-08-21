.class public Lcom/alipay/android/app/safepaybase/alikeyboard/i;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/a;
.source "SecureMoneyKeyboard.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;


# instance fields
.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Landroid/speech/tts/TextToSpeech;

.field private f:Landroid/view/accessibility/AccessibilityManager;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->f:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v3, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "keyboard_secure_money"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/g;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d()V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/i;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->f:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b(Landroid/content/Context;)I

    move-result v7

    move v5, v4

    :goto_0
    if-lt v5, v6, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_4

    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v9, v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v9, :cond_3

    check-cast v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    invoke-virtual {v2, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v1, v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView$a;)V

    :cond_5
    instance-of v1, v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    if-eqz v1, :cond_6

    check-cast v2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;

    invoke-virtual {v2, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    invoke-virtual {v2, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$a;)V

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c:Landroid/view/View;

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    const-string/jumbo v1, "msp_secure_key_dot"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/i;Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/alikeyboard/i;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_gan"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "key_comma"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "key_del"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v1, "key_space"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v0, :cond_0

    :goto_0
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    const-wide v2, 0x3fddd2f1a9fbe76dL    # 0.466

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/safepaybase/alikeyboard/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v1, 0x8000

    const/4 v2, 0x1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const-string/jumbo v0, "msp_secure_keyboard_del"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(I)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p2, v2, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "msp_secure_keyboard_already_del"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "msp_secure_keyboard_del"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(I)V

    goto :goto_0
.end method

.method private b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const v1, 0x8000

    const/4 v2, 0x1

    const/16 v0, 0x80

    if-ne p2, v0, :cond_1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Landroid/widget/TextView;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ne p2, v2, :cond_2

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->f:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alipay/android/app/safepaybase/alikeyboard/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/alipay/android/app/safepaybase/alikeyboard/i;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->d:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->f:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/j;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/i;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private e()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    const-string/jumbo v0, "Secure|mon"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureTextView;I)Z

    move-result v0

    return v0
.end method

.method public onInit(I)V
    .locals 2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->g:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->e:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->a(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
