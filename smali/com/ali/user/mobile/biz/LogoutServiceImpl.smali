.class public Lcom/ali/user/mobile/biz/LogoutServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "LogoutServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;


# static fields
.field private static mLogoutService:Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;


# instance fields
.field final TAG:Ljava/lang/String;

.field mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "LogoutServiceImpl"

    iput-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/biz/LogoutServiceImpl;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->fetchUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->performChangeAccountAction(Ljava/lang/String;)V

    return-void
.end method

.method private fetchUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mLogoutService:Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mLogoutService:Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/LogoutServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mLogoutService:Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mLogoutService:Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private performChangeAccountAction(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_change_account_login:I

    invoke-static {v0}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "changelogin"

    const-string/jumbo v2, "UC-LOGOUT-01"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_logout_current_account:I

    invoke-static {v0}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/biz/j;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/biz/j;-><init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public logout(Lcom/ali/user/mobile/login/c;)V
    .locals 2

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "\u5b89\u5168\u9000\u51fa\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/biz/LogoutServiceImpl;->mAuthService:Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    new-instance v0, Lcom/ali/user/mobile/biz/g;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/biz/g;-><init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Lcom/ali/user/mobile/login/c;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showChangeAccountDialog(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "showChangeAccountDialog \u4f20\u5165\u7684activity\u4e3anull"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "logoutButton"

    const-string/jumbo v2, "UC-LOGOUT-00"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_change_account_login:I

    invoke-static {v1}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_logout_current_account:I

    invoke-static {v1}, Lcom/ali/user/mobile/i/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/ali/user/mobile/ui/widget/d;

    invoke-direct {v1, p1, v0}, Lcom/ali/user/mobile/ui/widget/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v2, Lcom/ali/user/mobile/biz/i;

    invoke-direct {v2, p0, v1, v0}, Lcom/ali/user/mobile/biz/i;-><init>(Lcom/ali/user/mobile/biz/LogoutServiceImpl;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d$b;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/d;->show()V

    goto :goto_0
.end method
