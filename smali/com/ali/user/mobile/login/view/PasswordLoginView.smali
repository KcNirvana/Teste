.class public abstract Lcom/ali/user/mobile/login/view/PasswordLoginView;
.super Lcom/ali/user/mobile/login/view/LoginView;
.source "PasswordLoginView.java"


# instance fields
.field protected isDropdownAccount:Z

.field protected mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

.field protected mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field protected mArrowDownView:Landroid/widget/ImageButton;

.field protected mInputLeftMargin:I

.field protected mIsAccountInputted:Z

.field protected mIsPasswordInputted:Z

.field protected mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ali/user/mobile/login/ui/a/a",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

.field protected mPasswordChangeView:Landroid/widget/ImageButton;

.field protected mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

.field protected mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

.field protected mPasswordInputType:Ljava/lang/String;

.field protected mSmsLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    iput v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mInputLeftMargin:I

    const-string/jumbo v0, "n"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputType:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mIsAccountInputted:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mIsPasswordInputted:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mSmsLoginMap:Ljava/util/Map;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/content/res/Resources;Landroid/widget/EditText;II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mInputLeftMargin:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v1, v2, v3, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/content/res/Resources;Landroid/widget/EditText;II)I

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    :cond_3
    iput-boolean v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    :cond_4
    invoke-virtual {p0, v5, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    iput-boolean v5, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/view/PasswordLoginView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->f()V

    return-void
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setAccessibilityProtect(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/w;

    invoke-direct {v1}, Lcom/ali/user/mobile/ui/widget/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/view/i;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/i;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v2, Lcom/ali/user/mobile/login/view/j;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/view/j;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordChangeView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/view/k;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/k;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v2, Lcom/ali/user/mobile/login/view/l;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/view/l;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private e()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->b()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->c()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->d()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/login/view/m;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/m;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ali/user/mobile/login/view/n;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/view/n;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_0
    const-string/jumbo v0, "n"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    const-string/jumbo v0, "UC-LOG-161225-05"

    const-string/jumbo v1, "loginpwdyc"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected addNullCheckButton(Landroid/widget/Button;)V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/ui/widget/an;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/an;-><init>()V

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/an;->a(Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected checkAccessibility()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/i/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    const-string/jumbo v0, "account"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "apdid"

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "accessibilityEnv"

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/i/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "UC-LOG-160414-01"

    const-string/jumbo v1, "dlmazt"

    move-object v3, v2

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public clearAccount()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    iput-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v3}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->requestAccountFocus()V

    return-void
.end method

.method public clearPassword()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    new-instance v1, Lcom/ali/user/mobile/login/view/o;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/o;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doForgotPasswordAction()V
    .locals 3

    const-string/jumbo v0, "UC-LOG-161225-07"

    const-string/jumbo v1, "Forgotpassword"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->clearPassword()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toForgetPassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doInflate(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->doInflate(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_layout_login_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userAccountInput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->historyList:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APListView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->userPasswordInput:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordChangeView:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->a()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->e()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->initLoginHistoryList()V

    return-void
.end method

.method public getLoginAccount()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\uff0d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\uff0d"

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getLoginPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShownAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hideLoginHistory()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APListView;->setVisibility(I)V

    return-void
.end method

.method protected initInputBoxIme(Landroid/widget/Button;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/view/g;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/view/g;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected initInputTrace()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/view/e;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/e;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    new-instance v1, Lcom/ali/user/mobile/login/view/h;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/view/h;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected initLoginHistoryList()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->hasLoginHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mInsideAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_arrow_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    new-instance v3, Lcom/ali/user/mobile/login/view/f;

    invoke-direct {v3, p0}, Lcom/ali/user/mobile/login/view/f;-><init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V

    new-instance v0, Lcom/ali/user/mobile/login/ui/a/a;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v4, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistorys:Ljava/util/List;

    const-string/jumbo v5, "alipay"

    invoke-direct/range {v0 .. v5}, Lcom/ali/user/mobile/login/ui/a/a;-><init>(Landroid/content/Context;Landroid/view/View$OnLongClickListener;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/a/a;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/a/a;

    iget v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mInputLeftMargin:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/a/a;->a(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    invoke-virtual {v0, v6}, Lcom/ali/user/mobile/ui/widget/APListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/a/a;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_50:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mInsideAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mInsideAccount:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setAccount(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initRds()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->initRds()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "PwdET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method protected isOpenSmsLoginNative()Z
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sms_login_enable"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PasswordLoginView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smsEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onLoginClicked(Landroid/widget/Button;)V
    .locals 5

    const-string/jumbo v0, "PasswordLoginView"

    const-string/jumbo v1, "onLoginClicked"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C57"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C09"

    const-string/jumbo v1, "login"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->k()Lcom/ali/user/mobile/login/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/ali/user/mobile/login/a;

    invoke-direct {v2}, Lcom/ali/user/mobile/login/a;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/ali/user/mobile/login/f;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const-string/jumbo v1, "LoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->onRdsControlClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->unifyLogin()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->checkAccessibility()V

    return-void
.end method

.method public onNewAccount(Ljava/lang/String;I)V
    .locals 1

    const v0, 0xb001

    if-eq p2, v0, :cond_0

    const v0, 0xd000

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setAccount(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected performDialogAction(Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_login:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->clearPassword()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toSmsLogin()V

    const-string/jumbo v0, "smsLogin_ClickSendMsgToH5"

    const-string/jumbo v1, "UC-LOG-150512-06"

    const-string/jumbo v2, "loginsms"

    const/4 v3, 0x0

    const-string/jumbo v4, "start"

    const-string/jumbo v5, "clicked"

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/view/LoginView;->performDialogAction(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public requestAccountFocus()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->showInputMethodPannel(Landroid/view/View;)V

    return-void
.end method

.method public requestPasswordFocus()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->showInputMethodPannel(Landroid/view/View;)V

    return-void
.end method

.method protected setAccount(Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedAccount:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "alipay"

    invoke-static {p1, v0}, Lcom/ali/user/mobile/i/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->isDropdownAccount:Z

    return-void
.end method

.method protected setLoginHistoryAccount(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {p0, v1, p1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setPortraitImage(ZLcom/ali/user/mobile/account/bean/UserInfo;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setAccount(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public showInputPassword()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_0
    const-string/jumbo v0, "y"

    iput-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSelection(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected showLoginHistory()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mArrowDownView:Landroid/widget/ImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_arrow_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mLoginHistoryList:Lcom/ali/user/mobile/ui/widget/APListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APListView;->setVisibility(I)V

    return-void
.end method

.method protected trustLoginWithExtLoginParam()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mParams:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "PasswordLoginView"

    const-string/jumbo v4, "has extLoginParam, validateTpye:%s, token:%s, ssoToken:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v6, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIsFromRegist()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/ali/user/mobile/login/view/PasswordLoginView;->setAccount(Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "PasswordLoginView"

    const-string/jumbo v3, "\u53d1\u8d77\u4fe1\u4efb\u767b\u5f55\uff0c\u540e\u7eed\u6d41\u7a0b\u5168\u90e8\u5ffd\u7565"

    invoke-static {v1, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    const-string/jumbo v1, "withonekeytoken"

    iget-object v3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "userId"

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mCurrentSelectedHistory:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v3}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/login/LoginParam;->addExternalParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected uiCustomize()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/view/LoginView;->uiCustomize()V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    :goto_0
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mAccountInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
