.class public Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "RegPurePhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/register/b/a;


# static fields
.field private static final sTag:Ljava/lang/String; = "Reg_PurePhone"


# instance fields
.field private mConfirm:Landroid/widget/Button;

.field private mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

.field private mPhoneInput:Landroid/widget/EditText;

.field protected mProtocol:Landroid/widget/TextView;

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field private mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method private getInputPhoneNo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private initButton()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_confirm:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->addNeedEnabledButton(Landroid/widget/Button;)V

    return-void
.end method

.method private initContext()V
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RegisterPage"

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    return-void
.end method

.method private initPhoneAndRegion()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_phone_num:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    const-string/jumbo v1, "fromregfirstpage"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setPageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->getPhoneInput()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    new-instance v1, Lcom/ali/user/mobile/register/ui/j;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/j;-><init>(Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setPhoneChangeListener(Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox$a;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->attatchActivity(Lcom/ali/user/mobile/base/BaseActivity;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->showInputMethodPannel(Landroid/view/View;)V

    return-void
.end method

.method private initProtocol()V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x21

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->taobao_protocol:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_phone_protocol:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_service_protocol:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->taobao_protocol:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://ds.alipay.com/fd-inhm9zcq/index.html"

    const-string/jumbo v4, "https://tms.alicdn.com/go/chn/member/agreement.php"

    const-string/jumbo v5, "$alipay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "$alipay"

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v5, "$taobao"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "$taobao"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, v5, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v7, v1

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->h()I

    move-result v1

    const v8, 0x7fffffff

    if-ne v1, v8, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/ali/user/mobile/security/ui/R$color;->alipay_antBlue:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :cond_0
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/ali/user/mobile/register/TaoUrlSpan;

    const-string/jumbo v10, "alipayagreement"

    invoke-direct {v9, v3, v10}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v3

    invoke-virtual {v8, v3, v5, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8, v3, v5, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Lcom/ali/user/mobile/register/TaoUrlSpan;

    const-string/jumbo v5, "taobaoagreement"

    invoke-direct {v3, v4, v5}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v3

    invoke-virtual {v8, v3, v7, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8, v3, v7, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v1, v12, v0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mProtocol:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const-string/jumbo v5, "$Alipay"

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v5, "$Taobao"

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private initRds()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RegisterPage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    const-string/jumbo v2, "RegisterViewContainer"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private initTitleBar()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titlebar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initTitleBar()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initPhoneAndRegion()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initButton()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initProtocol()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initWrapper()V

    return-void
.end method

.method private initWrapper()V
    .locals 4

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/util/ResizeScrollView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v0, Lcom/ali/user/mobile/util/k;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mScrollView:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/util/k;-><init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;Landroid/view/View;Z)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->wrapper:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ali/user/mobile/register/ui/i;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/i;-><init>(Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private preFillPhoneNum()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v1, :cond_2

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->isAllEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Reg_PurePhone"

    const-string/jumbo v2, "prefill, use account from state"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAccountForRPC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAccountForRPC()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAreaCodeForRPC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getFullAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAreaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "Reg_PurePhone"

    const-string/jumbo v1, "prefill, auto fill"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_phoneNumber:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_china:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->autoFill()V

    goto :goto_2
.end method

.method private reportDeviceLocation()V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/biz/k;

    invoke-direct {v0}, Lcom/ali/user/mobile/biz/k;-><init>()V

    const-string/jumbo v1, "regist"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/biz/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private resetToken()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_PurePhone"

    const-string/jumbo v1, "null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Z)V

    goto :goto_0
.end method

.method private verifyAndSendSms(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_PurePhone"

    const-string/jumbo v1, "send sms, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    iput-object p1, v1, Lcom/ali/user/mobile/register/a/a;->f:Ljava/lang/String;

    const-string/jumbo v2, "registerPreVerify"

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->d:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->reportDeviceLocation()V

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0
.end method


# virtual methods
.method public afterDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RetLoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    return-void
.end method

.method public getActivity()Lcom/ali/user/mobile/base/BaseActivity;
    .locals 0

    return-object p0
.end method

.method public handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x2

    iget v2, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->alert(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->resetToken()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x461 -> :sswitch_0
        0x462 -> :sswitch_0
        0x7d1 -> :sswitch_1
        0x7d3 -> :sswitch_1
        0xbbb -> :sswitch_1
        0xbf3 -> :sswitch_0
        0xc09 -> :sswitch_1
    .end sparse-switch
.end method

.method public handleVerifySuccess(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->verifyAndSendSms(Ljava/lang/String;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onBackPressed()V

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    const-string/jumbo v1, "UC-ZC-150512-04"

    const-string/jumbo v2, "zcback"

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->getInputPhoneNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "YES"

    :goto_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "NO"

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_confirm:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mConfirm:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->closeInputMethod(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RegisterBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->verifyAndSendSms(Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-06"

    const-string/jumbo v1, "zcnext"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_pure_phone:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initContext()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initView()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->initRds()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhone:Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUPhoneInputBox;->setRdsWrapper(Lcom/ali/user/mobile/login/rds/RDSWraper;)V

    const-string/jumbo v0, "UC-ZC-150512-01"

    const-string/jumbo v1, "registerpage"

    const-string/jumbo v2, "new"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-01-old"

    const-string/jumbo v1, "registerpage-old"

    const-string/jumbo v2, "new"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RegPurePhoneActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/ali/user/mobile/register/b/g;->a(Lcom/ali/user/mobile/register/b/a;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onStart()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->resetToken()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->preFillPhoneNum()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->closeInputMethod(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onStop()V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegPurePhoneActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
