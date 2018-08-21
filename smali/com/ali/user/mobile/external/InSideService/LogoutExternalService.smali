.class public Lcom/ali/user/mobile/external/InSideService/LogoutExternalService;
.super Ljava/lang/Object;
.source "LogoutExternalService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoutExternalService"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "LogoutExternalService"

    const-string/jumbo v1, "LogoutExternalService service constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private goLogoutActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/external/LogoutInsideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "inside_logout"

    const-string/jumbo v2, "UC-INSIDE-LOGIN-LOGOUT-170401-3"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LogoutExternalService"

    const-string/jumbo v1, "LogoutExternalService start 2"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ali/user/mobile/a/a;->b(Lcom/alipay/android/phone/inside/framework/service/b;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/InSideService/LogoutExternalService;->goLogoutActivity()V

    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "LogoutExternalService"

    const-string/jumbo v1, "LogoutExternalService start 1"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string/jumbo v0, "LogoutExternalService"

    const-string/jumbo v1, "LogoutExternalService start 3"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
