.class public Lcom/ali/user/mobile/external/InSideService/AccountChangeExternalService;
.super Ljava/lang/Object;
.source "AccountChangeExternalService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountChangeExternalService"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AccountChangeExternalService"

    const-string/jumbo v1, "AccountChangeExternalService service constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "inside_login_switch_account"

    const-string/jumbo v2, "UC-INSIDE-LOGIN-SWITCH-170401-2"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "AccountChangeExternalService"

    const-string/jumbo v1, "AccountChangeExternalService start 2"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "source_accountSelectAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "resetCookie"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LoginSource"

    const-string/jumbo v2, "accountManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/login/app/LoginAppService;->getInstance()Lcom/ali/user/mobile/login/app/LoginAppService;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/login/app/LoginAppService;->startLoginPage(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "AccountChangeExternalService"

    const-string/jumbo v1, "AccountChangeExternalService start 1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "AccountChangeExternalService"

    const-string/jumbo v1, "AccountChangeExternalService start 3"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
