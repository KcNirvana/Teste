.class public Lcom/alipay/android/app/safepaybase/alikeyboard/f;
.super Lcom/alipay/android/app/safepaybase/alikeyboard/a;
.source "MoneyKeyboard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "keyboard_money"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->b:Lcom/alipay/android/app/safepaybase/alikeyboard/g;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->b(Landroid/content/Context;)I

    move-result v6

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v1, v3

    :goto_1
    if-lt v1, v2, :cond_3

    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v9}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v8, v9}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
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

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->b()V

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

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a(Ljava/lang/String;)V

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

.method private b(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v1, "key_enter"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
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

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->a(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;->b(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
