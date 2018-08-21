.class public Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "AliuserGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AliuserGuideActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    return-void
.end method

.method private checkRegisterRecover()Z
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private initRds()V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->initRdsPage(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleLayout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->registerButton:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sget v3, Lcom/ali/user/mobile/security/ui/R$id;->brandLayout:I

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->configRightCornerView(Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->a()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v1, "AliuserGuideActivity"

    const-string/jumbo v2, "use customed brand view:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, v5, v4, v3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected clearAccount()V
    .locals 0

    return-void
.end method

.method protected clearPassword()V
    .locals 0

    return-void
.end method

.method protected getLoginAccount()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getLoginPassword()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected getShownAccount()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public goLogin(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 6

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v0, "login_param"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v0, "come_back"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "flag"

    const-string/jumbo v2, "firstpage"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "RenderStartTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v2, "intentFlags"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    const-string/jumbo v0, "AliuserGuideActivity"

    const-string/jumbo v3, "there is external intent flags, add to login intent"

    invoke-static {v0, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public goReg()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "AliuserGuideActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginButton:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "UC-start-161225-02"

    const-string/jumbo v1, "startlogin"

    invoke-static {v0, v1, v2, v2, v2}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->goLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->registerButton:I

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    const-string/jumbo v0, "UC-start-161225-03"

    const-string/jumbo v1, "startregistered"

    invoke-static {v0, v1, v2, v2, v2}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->goReg()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_guide:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->initRds()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->initViews()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->checkRegisterRecover()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliuserGuideActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-start-161225-01"

    const-string/jumbo v1, "startpage"

    invoke-static {v0, v1, v4, v4, v4}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->callBackInsideOnKeyBack()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewAccount(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliuserGuideActivity;->mAppId:Ljava/lang/String;

    return-void
.end method
