.class public Lcom/ali/user/mobile/register/b/c;
.super Ljava/lang/Object;
.source "RPCRouter.java"

# interfaces
.implements Lcom/ali/user/mobile/register/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "exist person, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "alert login null activity/account"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_loginImmediate:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Reg_RPCRouter"

    const-string/jumbo v2, "alert login, use server side wordings"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    iget-object v3, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    :cond_2
    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    const-string/jumbo v2, ""

    new-instance v4, Lcom/ali/user/mobile/register/b/f;

    invoke-direct {v4, p0, p1, p2}, Lcom/ali/user/mobile/register/b/f;-><init>(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "direct login, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->getFullAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/i/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v7, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v5, v4

    :goto_1
    move-object v0, p0

    move-object v2, p4

    move-object v3, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ali/user/mobile/register/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/Activity;)V

    const-string/jumbo v0, "UC-ZC-150512-10"

    const-string/jumbo v1, "zccfdlok"

    const-string/jumbo v2, "RegisterExistUser"

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/register/Account;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "direct login, current activity finished"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->newUserHasQueryPassword:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1
.end method

.method private a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "null handler/result status"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->memo:Ljava/lang/String;

    sparse-switch v0, :sswitch_data_0

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/base/BaseActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/register/b/c;->b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V

    goto :goto_0

    :sswitch_1
    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/register/b/c;->b(Ljava/lang/String;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :sswitch_2
    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_regist_rds_suspect:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/mobile/register/b/c;->a(Ljava/lang/String;ILcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :sswitch_3
    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/c;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ali/user/mobile/register/b/c;->a()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/ali/user/mobile/register/b/c;->b()V

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/ali/user/mobile/register/b/c;->a(Ljava/lang/String;ILcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    :sswitch_7
    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ali/user/mobile/register/b/c;->a(Ljava/lang/String;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcf -> :sswitch_1
        0x463 -> :sswitch_6
        0x7d1 -> :sswitch_6
        0x7d4 -> :sswitch_7
        0x7d6 -> :sswitch_7
        0xbbb -> :sswitch_6
        0xbbc -> :sswitch_6
        0xbf5 -> :sswitch_2
        0xbf6 -> :sswitch_3
        0xbf7 -> :sswitch_4
        0xbf8 -> :sswitch_3
        0xbf9 -> :sswitch_4
        0xbfc -> :sswitch_3
        0xbfd -> :sswitch_5
        0xbfe -> :sswitch_5
        0xc09 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic a(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/register/b/c;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILcom/ali/user/mobile/base/BaseActivity;)V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v2, ""

    invoke-virtual {p3}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, ""

    move-object v0, p3

    move-object v1, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 7

    const-string/jumbo v2, ""

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reg_manual_sms_resend:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/b/d;

    invoke-direct {v4, p0, p2}, Lcom/ali/user/mobile/register/b/d;-><init>(Lcom/ali/user/mobile/register/b/c;Lcom/ali/user/mobile/base/BaseActivity;)V

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    iput-object p1, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    iput-object p2, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object p3, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {p6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/mobile/a/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "login_param"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "from_register"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "noQueryPwdUser"

    if-nez p5, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const/high16 v0, 0x4000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "login pwd, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "sp"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 4

    if-nez p2, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "set pay pwd, null activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "optionStatus"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ali/user/mobile/register/ui/AliUserRegisterSixPasswordActivity;

    invoke-direct {v2, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mobile_for_sms"

    invoke-virtual {p1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->getAccountForRPC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v0, "from_register"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V
    .locals 5

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "handle RPC success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v1, "registerPreVerify"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "read_sms_duration"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v2, "Reg_RPCRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got loading duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "sms with permission"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/b/c;->c()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "sms without permission"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/b/c;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v1, "sendSms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "send sms success, should handled by activity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v1, "verifySms"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    const-string/jumbo v1, "setLoginPassword"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Reg_RPCRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reg success, to login "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-29"

    const-string/jumbo v1, "zcsuccess"

    sget-object v2, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    const-string/jumbo v1, "afterreg"

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->token:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ali/user/mobile/register/b/c;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "Reg_RPCRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reg success, to pay pwd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->removePaymentPass:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/ali/user/mobile/register/b/a;->getActivity()Lcom/ali/user/mobile/base/BaseActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/c;->b(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/base/BaseActivity;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/ali/user/mobile/base/BaseActivity;)V
    .locals 7

    const/4 v5, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "207 null activity "

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, ""

    invoke-virtual {p2}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_comfirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/b/e;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/b/e;-><init>(Lcom/ali/user/mobile/register/b/c;)V

    move-object v0, p2

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "auto sms, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "as"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_RPCRouter"

    const-string/jumbo v1, "manual sms, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/register/a/b;)V
    .locals 4

    invoke-static {}, Lcom/ali/user/mobile/register/b/g;->a()Lcom/ali/user/mobile/register/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/register/b/a;->handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Reg_RPCRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handled by top handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, -0x2

    iget v2, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "Reg_RPCRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Reg_RPCRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "server code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/register/b/c;->a(Lcom/ali/user/mobile/register/a/b;Lcom/ali/user/mobile/register/b/a;)V

    goto :goto_0
.end method
