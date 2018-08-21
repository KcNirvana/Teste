.class public Lcom/ali/user/mobile/external/LoginExternalPlugin;
.super Ljava/lang/Object;
.source "LoginExternalPlugin.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/a/a;


# static fields
.field private static final ALIPAY_LOGIN_STATE_SERVICE:Ljava/lang/String; = "ALIPAY_LOGIN_STATE_SERVICE"

.field private static final AUTO_AUTH_SERVICE_NAME:Ljava/lang/String; = "AUTO_AUTH_EXTERNAL_SERVICE"

.field private static final CHANGE_ACCOUNT_SERVICE_NAME:Ljava/lang/String; = "CHANGE_ACCOUNT_EXTERNAL_SERVICE"

.field private static final GET_USER_ID_SERVICE_NAME:Ljava/lang/String; = "GET_USER_ID_SERVICE"

.field private static final LOGIN_SERVICE_NAME:Ljava/lang/String; = "LOGIN_EXTERNAL_SERVICE"

.field private static final LOGOUT_SERVICE_NAME:Ljava/lang/String; = "LOGOUT_EXTERNAL_SERVICE"

.field private static final TAG:Ljava/lang/String; = "LoginExternalPlugin"


# instance fields
.field private mService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "LOGIN_EXTERNAL_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/LoginExternalService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "AUTO_AUTH_EXTERNAL_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/AutoAuthExternalService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "LOGOUT_EXTERNAL_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/LogoutExternalService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/LogoutExternalService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "CHANGE_ACCOUNT_EXTERNAL_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/AccountChangeExternalService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/AccountChangeExternalService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "GET_USER_ID_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/GetUserIdService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    const-string/jumbo v1, "ALIPAY_LOGIN_STATE_SERVICE"

    new-instance v2, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;

    invoke-direct {v2}, Lcom/ali/user/mobile/external/InSideService/AlipayLoginStateService;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LoginExternalPlugin"

    const-string/jumbo v1, "login plugin constructor"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/external/LoginExternalPlugin;->initEdge()V

    return-void
.end method

.method private initEdge()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/external/LoginExternalPlugin$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/external/LoginExternalPlugin$1;-><init>(Lcom/ali/user/mobile/external/LoginExternalPlugin;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/inside/framework/service/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginExternalPlugin;->mService:Ljava/util/Map;

    return-object v0
.end method

.method public onRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onUnRegisted(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
