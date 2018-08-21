.class public Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;
.super Ljava/lang/Object;
.source "AlipayLoginStateService.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final HAS_LOGIN:Ljava/lang/String; = "1"

.field private static final HAS_NOT_LOGIN:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLoginState()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/a;->a(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/a;->a()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "0"

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;->start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Void;)V

    return-void
.end method

.method public start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/inside/framework/service/b",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;->startForResult(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;->start(Ljava/lang/Void;)V

    return-void
.end method

.method public start(Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic startForResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;->startForResult(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startForResult(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;->getLoginState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
