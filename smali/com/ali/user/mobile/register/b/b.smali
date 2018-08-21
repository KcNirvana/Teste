.class public Lcom/ali/user/mobile/register/b/b;
.super Ljava/lang/Object;
.source "LocalRouter.java"

# interfaces
.implements Lcom/ali/user/mobile/register/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "restart reg, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 6

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "pwd login, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/ali/user/mobile/a/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "Reg_LocalRouter"

    const-string/jumbo v4, "pwd login, fill account"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v3}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->asAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    const-string/jumbo v0, "login_param"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Reg_LocalRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pwd login, has pwd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "noQueryPwdUser"

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v0, "from_register"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "null handler"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    const-string/jumbo v1, "m"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/b/b;->a(Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "as"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/b/b;->b(Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "ms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/b;->b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "sp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/b/b;->c(Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "e"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/b/b;->d(Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "pl"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/b;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "sms auto, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "sms manual, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/RegManualSmsActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private c(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "supply pwd, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/RegLoginPwdActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d(Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "exist person, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/register/a/b;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iget v1, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "null state/type/page"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Reg_LocalRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handle state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/register/b/g;->a()Lcom/ali/user/mobile/register/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/register/b/a;->handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "Reg_LocalRouter"

    const-string/jumbo v1, "handled by top handler"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/b;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V

    goto :goto_0
.end method
