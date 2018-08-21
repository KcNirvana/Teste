.class public Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;
.super Ljava/lang/Object;
.source "AutoAuthExternalService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/a",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final IS_LOGIN_NAME:Ljava/lang/String; = "is_login"

.field private static final RPC_AUTH:Ljava/lang/String; = "rpc_auth"

.field private static final RPC_AUTH_FORCE_NOT_SHOW_LOGIN:Ljava/lang/String; = "notShowLoginApp"

.field private static final TAG:Ljava/lang/String; = "AutoAuthExternalService"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AutoAuthExternalService"

    const-string/jumbo v1, "AutoAuthExternalService  service constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public start(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "AutoAuthExternalService"

    const-string/jumbo v1, "AutoAuthExternalService start just autologin,not care result"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;->startForResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    return-void
.end method

.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "AutoAuthExternalService"

    const-string/jumbo v1, "AutoAuthExternalService not support callback"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;->startForResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;->start(Lcom/alipay/android/phone/inside/framework/service/b;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;->start(Landroid/os/Bundle;)V

    return-void
.end method

.method public startForResult(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 5

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "inside_autologin"

    const-string/jumbo v2, "UC-INSIDE-LOGIN-AUTO-170401-4"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notShowLoginApp"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "AutoAuthExternalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AutoAuthExternalService startForResult action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "rpc_auth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->rpcAuth(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "is_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->isLogin()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "params is not valid , need action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AutoAuthExternalService"

    const-string/jumbo v2, "startForResult error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "inside error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;->startForResult(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
