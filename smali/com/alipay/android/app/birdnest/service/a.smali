.class public Lcom/alipay/android/app/birdnest/service/a;
.super Ljava/lang/Object;
.source "FlybirdTemplateKeyboardService.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplateKeyboardService;


# instance fields
.field private a:Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/service/a;->a:Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;

    return-void
.end method

.method private a(Lcom/alipay/android/app/template/KeyboardType;)Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    .locals 5

    const/4 v1, 0x0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;Z)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/service/a;->a:Lcom/alipay/android/app/birdnest/service/KeyboardStatisticImpl;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setStatisticInterface(Lcom/alipay/android/app/safepaybase/alikeyboard/p;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    :goto_0
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->initializeKeyboard(Landroid/widget/FrameLayout;)V

    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/widget/EditText;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method


# virtual methods
.method public destroyKeyboard(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::destroyKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::enter"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::destroyKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::decorView is null"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/d;->b(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::destroyKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::keyboard is null"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/d;->a(I)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::destroyKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-destroyKeyboard:::unBindKeyboard"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideKeyboard(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "FlybirdTemplateKeyboardService::hideKeyboard"

    const-string/jumbo v3, "FlybirdTemplateKeyboardService-hideKeyboard:::enter"

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    const-string/jumbo v2, "FlybirdTemplateKeyboardService::hideKeyboard"

    const-string/jumbo v3, "FlybirdTemplateKeyboardService-hideKeyboard:::decorView is null"

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/d;->b(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->isShowKeyboard()Z

    move-result v0

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    const-string/jumbo v1, ""

    const-string/jumbo v2, "FlybirdTemplateKeyboardService::hideKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FlybirdTemplateKeyboardService-hideKeyboard:::isShowKeyboard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::showKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-showKeyboard-enter"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/alipay/android/app/birdnest/service/a;->a(Landroid/view/View;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-direct {p0, p4}, Lcom/alipay/android/app/birdnest/service/a;->a(Landroid/view/View;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FlybirdTemplateKeyboardService::showKeyboard"

    const-string/jumbo v2, "FlybirdTemplateKeyboardService-showKeyboard-addKeyboard"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/alipay/android/app/birdnest/service/a;->a(Landroid/view/View;Landroid/view/View;Z)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/d;->a(ILcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)V

    invoke-direct {p0, p2}, Lcom/alipay/android/app/birdnest/service/a;->a(Lcom/alipay/android/app/template/KeyboardType;)Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    move-result-object v1

    int-to-long v2, p6

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V

    goto :goto_0
.end method
