.class public Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;
.super Ljava/lang/Object;
.source "AntExtServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AuthServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/ServerConfigServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/ServerConfigService;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DeviceServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    return-object v0
.end method

.method public static getDexInfoService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/DexInfoServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DexInfoService;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LoginService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    move-result-object v0

    return-object v0
.end method

.method public static getLogoutService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "com.ali.user.mobile.biz.LogoutServiceImpl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reflect get LogoutService success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/ali/user/mobile/accountbiz/extservice/LogoutService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reflect get LogoutService error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMemCacheService()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->getInstance()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    move-result-object v0

    return-object v0
.end method

.method public static getRSAService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/RSAServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    move-result-object v0

    return-object v0
.end method

.method public static getRouterService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RouterService;
    .locals 4

    :try_start_0
    const-string/jumbo v0, "com.ali.user.mobile.biz.SecurityStartIntercept"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/util/i;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reflect get getRouterService success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/ali/user/mobile/accountbiz/extservice/RouterService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reflect get RouterService error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecurityInitService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/SecurityInitService;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfoService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;
    .locals 1

    invoke-static {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    move-result-object v0

    return-object v0
.end method
