.class public Lcom/ali/user/mobile/external/InSideService/LoginExternalService;
.super Ljava/lang/Object;
.source "LoginExternalService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginExternalService"


# instance fields
.field private mOpenAuthToken:Ljava/lang/String;

.field private mOpenAuthUserId:Ljava/lang/String;

.field private mOpenMcAccount:Ljava/lang/String;

.field private mOpenMcMobileNumber:Ljava/lang/String;

.field private mOpenMobileNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMobileNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcMobileNumber:Ljava/lang/String;

    const-string/jumbo v0, "LoginExternalService"

    const-string/jumbo v1, "LoginExternalService service constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private goPreCheckPage()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "openMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openMcMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openMcAccount"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openAuthToken"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openAuthUserId"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fromWhere"

    const-string/jumbo v2, "fromFirstInit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private goPreRouterPage()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/external/AuthLoginResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "openAuthToken"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openAuthUserId"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openMcAccount"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "openMcMobileNumber"

    iget-object v2, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "loginActionType"

    const-string/jumbo v2, "loginActionWithOpenAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "LoginExternalService"

    const-string/jumbo v1, "LoginExternalService start 2"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "inside_login_init"

    const-string/jumbo v2, "UC-INSIDE-LOGIN-INIT-170401-1"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/os/Bundle;

    const-string/jumbo v0, "openAuthToken"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthToken:Ljava/lang/String;

    const-string/jumbo v0, "openAuthUserId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenAuthUserId:Ljava/lang/String;

    const-string/jumbo v0, "openMobileNumber"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMobileNumber:Ljava/lang/String;

    const-string/jumbo v0, "openMcAccount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcAccount:Ljava/lang/String;

    const-string/jumbo v0, "openMcMobileNumber"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->mOpenMcMobileNumber:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "event"

    const-string/jumbo v1, "pre_no_token_no_session"

    const-string/jumbo v2, "UC-INSIDE-LOG-170401-5"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;->goPreCheckPage()V

    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "LoginExternalService"

    const-string/jumbo v1, "LoginExternalService start 1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "LoginExternalService"

    const-string/jumbo v1, "LoginExternalService start 3"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
