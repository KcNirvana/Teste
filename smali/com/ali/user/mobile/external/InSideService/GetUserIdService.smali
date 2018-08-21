.class public Lcom/ali/user/mobile/external/InSideService/GetUserIdService;
.super Ljava/lang/Object;
.source "GetUserIdService.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;->start(Lcom/alipay/android/phone/inside/framework/service/b;Ljava/lang/Void;)V

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

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;->startForResult(Ljava/lang/Void;)Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;->start(Ljava/lang/Void;)V

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

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;->startForResult(Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startForResult(Ljava/lang/Void;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "currentUserId"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
