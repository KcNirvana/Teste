.class public Lcom/ali/user/mobile/external/LogoutInsideActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "LogoutInsideActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/external/LogoutInsideActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->delayFinishCurrentPage()V

    return-void
.end method

.method private delayFinishCurrentPage()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/external/LogoutInsideActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LogoutInsideActivity$2;-><init>(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private doLogOut()V
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/external/LogoutInsideActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u767b\u51fa"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_logoutting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->showProgress(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getLogoutService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/external/LogoutInsideActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LogoutInsideActivity$1;-><init>(Lcom/ali/user/mobile/external/LogoutInsideActivity;)V

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;->logout(Lcom/ali/user/mobile/login/c;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/ali/user/mobile/external/LogoutInsideActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "LogoutInsideActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onStart()V

    sget-object v0, Lcom/ali/user/mobile/external/LogoutInsideActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LogoutInsideActivity;->doLogOut()V

    return-void
.end method

.method protected setAppId()V
    .locals 0

    return-void
.end method
