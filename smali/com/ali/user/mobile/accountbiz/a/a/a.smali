.class public Lcom/ali/user/mobile/accountbiz/a/a/a;
.super Ljava/lang/Object;
.source "LogoutBiz.java"


# instance fields
.field private a:Lcom/ali/user/mobile/account/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->mspTid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->mspClientKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->mspImei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->mspImsi:Ljava/lang/String;

    const-string/jumbo v1, "LogoutServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u66f4\u6539\u7528\u6237\u72b6\u6001\u5f00\u59cb"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u8bf7\u6c42\u670d\u52a1\u5668\u5b89\u5168\u9000\u51fa"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "doLogout error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;

    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;-><init>()V

    iput-object p1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->logonId:Ljava/lang/String;

    iput-object p2, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->logoutType:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v4}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "currentOperateMobile"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "isPrisonBreak"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->g()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "isTrojan"

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "phoneModel"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "insideModel"

    const-string/jumbo v4, "insidePreview"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v3, "mspType"

    const-string/jumbo v4, "insideSdk"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v3

    const-string/jumbo v1, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :cond_0
    iget-object v3, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->externParams:Ljava/util/Map;

    const-string/jumbo v4, "apdId"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/a/a/a;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;)V

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a(Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;)Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;->logout(Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWResult;

    move-result-object v0

    const-string/jumbo v1, "LogoutServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWResult;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/account/bean/UserInfo;->setAutoLogin(Z)V

    const-string/jumbo v0, "false###LogoutServiceImpl"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setLoginToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setTaobaoSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/UserInfo;->setExternToken(Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->addUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u66f4\u65b0\u672c\u5730\u6570\u636e\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoLogin=false###LogoutServiceImpl###ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "\u4fee\u6539\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u672a\u767b\u5f55\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u66f4\u65b0\u672c\u5730\u6570\u636e\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryDeviceInfo()Lcom/ali/user/mobile/account/bean/DeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->walletTid:Ljava/lang/String;

    :cond_0
    const-string/jumbo v1, "LogoutServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f walletTid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->walletClientKey:Ljava/lang/String;

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/logout/UserLogoutGWReq;->clientId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogoutServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "setAutoLogin"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd kk:mm:ss:SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getMemCacheService()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "securityapp"

    const-string/jumbo v4, "security"

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/accountbiz/a/a/b;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/accountbiz/a/a/b;-><init>(Lcom/ali/user/mobile/accountbiz/a/a/a;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "\u53d1\u9001\u5b89\u5168\u9000\u51fa\u6d88\u606f"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.security.logout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "logoutUserId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v4}, Lcom/ali/user/mobile/account/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StackTrace"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 3

    const-string/jumbo v0, "LogoutServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logout params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object p2

    :cond_0
    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u4fee\u6539\u5f53\u524d\u767b\u5f55\u7528\u6237\u514d\u767b\u72b6\u6001\u4e3a\u4e0d\u53ef\u514d\u767b new"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a/a/a;->a:Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u66f4\u6539\u7528\u6237\u72b6\u6001"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->b()V

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->clearLoginUserInfo()V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->c()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a()V

    const-string/jumbo v0, "LogoutServiceImpl"

    const-string/jumbo v1, "logout userinfo not null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/a/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "logout error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
