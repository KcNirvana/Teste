.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "LoginServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/LoginService;


# static fields
.field private static mLoginService:Lcom/ali/user/mobile/accountbiz/extservice/LoginService;


# instance fields
.field private final AUTO_LOGIN:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field autoLoginCallBack:Lcom/ali/user/mobile/account/c;

.field isSameAccount:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastBroadcastSendTime:J

.field private mRegistBindType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "LoginServiceImpl"

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "autoLoginRpcError"

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->AUTO_LOGIN:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->isSameAccount:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLastBroadcastSendTime:J

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildDerviceInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;)V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/accountbiz/d;

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/accountbiz/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/d;->a()Lcom/ali/user/mobile/account/bean/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/Tid;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setWalletTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/Tid;->getClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setProductId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setProductVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setScreenHigh(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setScreenWidth(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setChannels(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setOsVersion(Ljava/lang/String;)V

    return-void
.end method

.method private buildLocalInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/b/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setMac(Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/account/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setCellId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a()Lcom/alipay/android/phone/inside/commonbiz/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildTid(Lcom/ali/user/mobile/account/model/UserLoginReq;)V
    .locals 5

    const-string/jumbo v0, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setMspImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setVimsi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private buildUserLoginReq()Lcom/ali/user/mobile/account/model/UserLoginReq;
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/account/model/UserLoginReq;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/b/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setUserAgent(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->buildDerviceInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->buildTid(Lcom/ali/user/mobile/account/model/UserLoginReq;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->buildLocalInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;)V

    return-object v0
.end method

.method private convertUserLoginGWReqPb(Lcom/ali/user/mobile/account/model/UserLoginReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;
    .locals 5

    new-instance v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;-><init>()V

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->cellId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->cellId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->channels:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->channels:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->clientDigest:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientDigest:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->clientId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->clientId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->deviceToken:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->deviceToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->location:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->location:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginCheckCode:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginCheckCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginPassword:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginPassword:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->mac:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mac:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->mspClientKey:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspClientKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->mspImei:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->mspImsi:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspImsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->mspTid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->mspTid:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->operatorType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->osVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->osVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->productId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->productVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->productVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->secTS:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->secTS:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->sourceId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->sourceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->tbCheckCode:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->tbCheckCodeId:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->userAgent:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->userAgent:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->vimei:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimei:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->vimsi:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->vimsi:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->walletClientKey:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletClientKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->walletTid:Ljava/lang/String;

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->walletTid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->makeLoginType(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginType:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->loginWthPwd:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->makeValidateType(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->loginWthPwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    :try_start_0
    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->screenHigh:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenHigh:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->screenWidth:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->screenWidth:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->externParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    iget-object v0, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;->externParams:Ljava/util/List;

    iget-object v1, p1, Lcom/ali/user/mobile/account/model/UserLoginReq;->externParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->makeExternParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private convertUserLoginResult(Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;)Lcom/ali/user/mobile/account/model/UserLoginResult;
    .locals 5

    new-instance v1, Lcom/ali/user/mobile/account/model/UserLoginResult;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/model/UserLoginResult;-><init>()V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->barcodePayToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->barcodePayToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->isBindCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->bindCard:Z

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->currentProductVersion:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->currentProductVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->customerType:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->customerType:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->downloadURL:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->downloadURL:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->existNewVersion:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->existNewVersion:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->extern_token:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extern_token:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->headImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->headImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->isCertified:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->isCertified:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginCheckCodeImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginCheckCodeImg:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginCheckCodeUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginCheckCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginContext:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginContext:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginServerTime:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginServerTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->loginToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->memo:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->mobileNo:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->mobileNo:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->resultStatus:I

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->sessionId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->sessionId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->taobaoSid:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->taobaoSid:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->tbCheckCodeId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->tbCheckCodeId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->tbCheckCodeUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->tbCheckCodeUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->userName:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->userName:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->isWirelessUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->wirelessUser:Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->iconUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extResAttrs:Ljava/util/Map;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;->extResAttrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;->key:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/ali/user/mobile/account/model/UserLoginResult;->extResAttrs:Ljava/util/Map;

    iget-object v4, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;->value:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private dataConvert(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginResult;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getBarcodePayToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setBarcodePayToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setCurrentProductVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setExistNewVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginFlag(Z)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginServerTime(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setMobileNo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setExtResAttrs(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "\u7d44\u88dd\u767b\u5f55\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAccountService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    return-object v0
.end method

.method private getApdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tokenResult=null"

    goto :goto_0
.end method

.method private getApdidToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tokenResult=null"

    goto :goto_0
.end method

.method private getAppState()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "alipay inside"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/LoginService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLoginService:Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLoginService:Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLoginService:Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLoginService:Lcom/ali/user/mobile/accountbiz/extservice/LoginService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLocalTid()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryDeviceInfo()Lcom/ali/user/mobile/account/bean/DeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "\u67e5\u8be2\u672c\u5730tid\u4e0d\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LoginServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "\u67e5\u8be2\u672c\u5730tid\u4e3a\u7a7a"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "\u67e5\u8be2\u672c\u5730tid\u4e3a\u7a7a, deviceInfoBean=null"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getNetType()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/util/h;->a(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "wifi"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "4g"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "3g"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "2g"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRequestHeaders()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    const-string/jumbo v2, "uid"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LoginServiceImpl"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getUmidToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->umidToken:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tokenResult=null"

    goto :goto_0
.end method

.method private isSupportPb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private logoutWhenAutoLoginFail(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "\u514d\u767b\u5931\u8d25\u53d1\u9001logout\u5e7f\u64ad\uff0c\u6e05cookie"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.security.logout"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "logoutUserId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private makeExternParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;-><init>()V

    iput-object p1, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;->key:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/ExternParamsWithout;->value:Ljava/lang/String;

    return-object v0
.end method

.method private makeLoginType(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;
    .locals 1

    const-string/jumbo v0, "taobao"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;->taobao:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;->alipay:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginTypeWithout;

    goto :goto_0
.end method

.method private makeValidateType(Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;
    .locals 1

    const-string/jumbo v0, "withpwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withpwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "without"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->without:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "withinnertoken"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withinnertoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "withmobilepwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withmobilepwd:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;->withtoken:Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/LoginWithout;

    goto :goto_0
.end method

.method private requestLogin(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
    .locals 4

    iput-object p3, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mRegistBindType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v1

    const-class v0, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;

    move-result-object v1

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/phone/mrpc/core/x;->a(Ljava/util/Map;)V

    invoke-interface {v1, p4}, Lcom/alipay/android/phone/mrpc/core/x;->a(Z)V

    if-eqz p4, :cond_0

    const-string/jumbo v1, "\u672c\u6b21\u767b\u5f55\u9700\u8981\u6e05\u9664cookie"

    :goto_0
    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->isSupportPb()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->convertUserLoginGWReqPb(Lcom/ali/user/mobile/account/model/UserLoginReq;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;->loginPb(Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWReqPb;)Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->convertUserLoginResult(Lcom/ali/user/mobile/rpc/vo/mobilegw/autologin/UserLoginGWResultPb;)Lcom/ali/user/mobile/account/model/UserLoginResult;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, v2, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeAutoLoginLog(Lcom/ali/user/mobile/account/model/UserLoginResult;J)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->processLoginResult(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "\u672c\u6b21\u767b\u5f55\u4e0d\u9700\u8981\u6e05\u9664cookie"

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v0, p2}, Lcom/ali/user/mobile/rpc/facade/UserUnifyLoginFacade;->login(Lcom/ali/user/mobile/account/model/UserLoginReq;)Lcom/ali/user/mobile/account/model/UserLoginResult;
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v3, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeAutoLoginLog(JLcom/alipay/android/phone/mrpc/core/RpcException;)V

    throw v0
.end method

.method private saveLoginServerTime(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/model/UserLoginReq;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "\u670d\u52a1\u5668\u767b\u9646\u65f6\u95f4:%s\uff0c\u767b\u9646\u7c7b\u578b:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginServerTime:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "deviceLock"

    invoke-static {v0, v1, v4}, Lcom/ali/user/mobile/accountbiz/b/c;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/ali/user/mobile/accountbiz/b/a;

    move-result-object v0

    const-string/jumbo v1, "loginServerTime"

    iget-object v2, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginServerTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "without"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "loginServerTimeWithpwd"

    iget-object v2, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->loginServerTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/b/a;->b()Z

    return-void
.end method

.method private saveUserInfo(Lcom/ali/user/mobile/account/model/UserLoginResult;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "\u67e5\u8be2\u5f53\u524d\u7528\u6237\u8be6\u7ec6\u4fe1\u606f"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "\u672a\u67e5\u8be2\u51fa\u5f53\u524d\u767b\u5f55\u76f8\u5173\u4fe1\u606f"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;-><init>()V

    move-object v2, v0

    :cond_0
    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMobileNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setMobileNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getIsCertified()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setIsCertified(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->isWirelessUser()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setWirelessUser(Z)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->isBindCard()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setBindCard(Z)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getCustomerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setCustomerType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userLoginResult.getExtResAttrs:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    const-string/jumbo v0, "havanaId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setHavanaId(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "nickName"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setNick(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "enabledStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setUserType(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "memberGrade"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setMemberGrade(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "realNameStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setRealNamed(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "isNewUser"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setNewUser(Z)V

    :cond_6
    const-string/jumbo v0, "realName"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setRealName(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v0, "walletEdition"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setWalletEdition(Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v0, "showWalletEditionSwitch"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setShowWalletEditionSwitch(Z)V

    :cond_9
    const-string/jumbo v0, "otherLoginId"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setOtherLoginId(Ljava/lang/String;)V

    :cond_a
    const-string/jumbo v0, "noQueryPwdUser"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setNoQueryPwdUser(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getHeadImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setLoginTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTaobaoSid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setTaobaoSid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setExternToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setLoginToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getLocalTid()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\uff0ctid\u672c\u5730\u5b58\u5728\uff0c\u8bbe\u7f6e\u514d\u767b\u72b6\u6001"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->setAutoLogin(Z)V

    const-string/jumbo v0, "setAutoLogin=true###getLocalTid()"

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/c/c;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    const-string/jumbo v0, "\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u5b8c\u6210"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    return v0

    :cond_d
    :try_start_2
    const-string/jumbo v0, "getLocalTid is false"

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LoginServiceImpl"

    invoke-static {v3, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u5f02\u5e38"

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private sendLoginBroadcast(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Ljava/lang/Boolean;ZLjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\uff0c\u53d1\u9001\u6d88\u606f\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "logonId"

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-boolean p3, Lcom/ali/user/mobile/util/f;->a:Z

    const-string/jumbo v1, "com.alipay.security.withPwd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/ali/user/mobile/util/f;->b:Z

    const-string/jumbo v1, "switchaccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registBindType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v1, "registbindtype"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLastBroadcastSendTime:J

    sub-long/2addr v2, v4

    const-string/jumbo v4, "LoginServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "broadcast send timeSpan: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x7d0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "extype"

    const-string/jumbo v6, "loginbr"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "exinfo"

    const-string/jumbo v6, "login_broadcast_twice"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "exremark"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "alilogin"

    invoke-static {v2, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mLastBroadcastSendTime:J

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->setTaoBaoSsoFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setDexValue(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/inside/security/f;

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/security/f;-><init>(Landroid/content/ContextWrapper;)V

    const-string/jumbo v1, "alipaysalt"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/security/f;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/inside/security/c;

    new-instance v1, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/security/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipaysalt"

    sget v3, Lcom/alipay/android/phone/inside/security/c;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/security/c;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "dexTime"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "dexValue"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "dexValue"

    const-string/jumbo v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setTaoBaoSsoFlag(Z)V
    .locals 5

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getAuthService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AuthService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "setTaoBaoSsoFlag: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/AuthService;->setTaoBaoSsoFlag(Z)V

    :cond_0
    return-void
.end method

.method private setTaobaoBlackBoxInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;Lcom/ali/user/mobile/accountbiz/extservice/RSAService;)V
    .locals 8

    :try_start_0
    new-instance v2, Lcom/alipay/android/phone/inside/security/e;

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-static {}, Lcom/ali/user/mobile/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/inside/security/e;-><init>(Landroid/content/ContextWrapper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {p2}, Lcom/ali/user/mobile/accountbiz/extservice/RSAService;->getSafeRSATS()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setSecTS(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/alipay/android/phone/inside/security/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setClientDigest(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecurityCheck exception"

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "secTS exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setSecTS(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v3, "LoginServiceImpl"

    invoke-static {v3, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientDigest exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setClientDigest(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateCurrentUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginLogonId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private writeAutoLoginLog(JLcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v6, v0, p1

    const-wide/32 v0, 0x186a0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "facade"

    const-string/jumbo v1, "alipay.user.login"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timespan"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "exceptionCode"

    invoke-virtual {p3}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "exceptionMsg"

    invoke-virtual {p3}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, "loginTrace-autoLogin"

    const-string/jumbo v2, ""

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "N-RpcException"

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private writeAutoLoginLog(Lcom/ali/user/mobile/account/model/UserLoginResult;J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/32 v2, 0x186a0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u514d\u767b\u7ed3\u679c, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v3, "N-Error-UserLoginResult=null"

    invoke-direct {p0, v3, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeAutoLoginLog(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v0, "LoginServiceImpl"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v3, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->resultStatus:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeAutoLoginLog(Ljava/lang/String;J)V

    const-string/jumbo v0, "result:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", memo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/ali/user/mobile/account/model/UserLoginResult;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private writeAutoLoginLog(Ljava/lang/String;J)V
    .locals 6

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "facade"

    const-string/jumbo v1, "alipay.user.login"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timespan"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, "loginTrace-autoLogin"

    const-string/jumbo v2, ""

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static writeLoginLog(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "UC-ZHAQ-56"

    const-string/jumbo v1, "loginTrace"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-static {v0, v1, p0, v2, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public autoLogin(Lcom/ali/user/mobile/account/c;)V
    .locals 6

    const-string/jumbo v0, "-----autoLogin\u5f00\u59cb\u8c03\u7528\u514d\u767b\u670d\u52a1"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "\u67e5\u8be2\u5f53\u524d\u767b\u5f55\u7528\u6237\u4fe1\u606f, logonId: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\u8c03\u7528\u670d\u52a1\u5668\u8bf7\u6c42\u767b\u5f55"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDeviceKeySet()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "apdidToken"

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getApdidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MMddHHmmssSSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "\u767b\u5f55\u670d\u52a1\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;-><init>()V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->buildUserLoginReq()Lcom/ali/user/mobile/account/model/UserLoginReq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginId(Ljava/lang/String;)V

    const-string/jumbo v2, "\u8d26\u6237\u767b\u5f55\u7c7b\u578b: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    const-string/jumbo v2, "alipay"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "without"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getRSAService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/RSAService;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string/jumbo v3, ""

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "\u5bc6\u7801\u4e0d\u4e3a\u7a7a\uff0c\u8fdb\u884c\u8d26\u5bc6\u767b\u5f55"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p2, v3}, Lcom/ali/user/mobile/accountbiz/extservice/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginPassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "withpwd"

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "withmobilepwd"

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginWthPwd(Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo v3, "taobao"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, p4}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setTbCheckCode(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setTbCheckCodeId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "terminalName"

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/b/b;->i()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "withpwd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "withmobilepwd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->setTaobaoBlackBoxInfo(Lcom/ali/user/mobile/account/model/UserLoginReq;Lcom/ali/user/mobile/accountbiz/extservice/RSAService;)V

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->setDexValue(Ljava/util/Map;)V

    :cond_5
    if-eqz p6, :cond_6

    const-string/jumbo v2, "\u5207\u6362\u8d26\u6237\u514d\u767b\uff0c\u589e\u52a0\u6807\u8bb0"

    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v2, "autoLoginScene"

    const-string/jumbo v4, "switchAccount"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v2, "appState"

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAppState()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "apdid"

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getApdid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "umidToken"

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getUmidToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "devKeySet"

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getDeviceKeySet()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "netType"

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getNetType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setExternParams(Ljava/util/Map;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p6}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->requestLogin(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v2, "wireless"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "alipay"

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1, p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginType(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoLoginRpcError###\u5bc6\u7801\u52a0\u5bc6\u5f02\u5e38"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    invoke-virtual {v1, p4}, Lcom/ali/user/mobile/account/model/UserLoginReq;->setLoginCheckCode(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public processLoginResult(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
    .locals 7

    const/16 v6, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v2

    invoke-interface {v2}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v4

    if-ne v6, v4, :cond_4

    const-string/jumbo v3, "\u767b\u5f55\u8fd4\u56de\u6210\u529f"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->saveLoginServerTime(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/model/UserLoginReq;)V

    const-string/jumbo v3, "\u767b\u5f55\u6210\u529f\uff0c\u5c06\u7528\u6237\u6570\u636e\u540c\u6b65\u81f3\u672c\u5730\u6570\u636e\u5e93\u4e2d"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginId()Ljava/lang/String;

    const-string/jumbo v3, "\u7ec4\u88c5\u8fd4\u56de\u6570\u636e\u5f00\u59cb"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->dataConvert(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginResult;)V

    const-string/jumbo v3, "\u7ec4\u88c5\u8fd4\u56de\u6570\u636e\u5b8c\u6210"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->saveUserInfo(Lcom/ali/user/mobile/account/model/UserLoginResult;)Z

    const-string/jumbo v3, "\u66f4\u65b0\u5f53\u524d\u5df2\u767b\u5f55\u7528\u6237\u72b6\u6001"

    invoke-direct {p0, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getUserId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-direct {p0, v3, v4, v5}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->updateCurrentUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v3

    if-ne v6, v3, :cond_2

    const-string/jumbo v3, "LoginServiceImpl"

    const-string/jumbo v4, "\u767b\u5f55\u6210\u529f,\u53d1\u9001\u767b\u5f55\u6210\u529f\u6d88\u606f"

    invoke-static {v3, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "withpwd"

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mRegistBindType:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->sendLoginBroadcast(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Ljava/lang/Boolean;ZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    const-string/jumbo v0, "LoginServiceImpl"

    const-string/jumbo v1, "\u9700\u8981\u8865\u5bc6\uff0c\u5ef6\u8fdf\u53d1\u9001\u767b\u5f55\u5e7f\u64ad\uff0c\u7b49\u8865\u5bc6\u5904\u7406\u5b8c\u6210\u540e\u518d\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoLoginRpcError###processLoginResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->writeLoginLog(Ljava/lang/String;)V

    const-string/jumbo v1, "LoginServiceImpl"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "\u767b\u5f55\u8fd4\u56de\u5931\u8d25, status: %s, memo: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    const-string/jumbo v0, "MTBIZ_LOGIN"

    const-string/jumbo v1, "AUTO_LOGIN"

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setExistNewVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setCurrentProductVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setDownloadURL(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getExtResAttrs()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setExtResAttrs(Ljava/util/Map;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, ""

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u65e0\u9700\u6e05\u9664\u672c\u5730\u767b\u5f55\u72b6\u6001"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getResultStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setResultStatus(I)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginCheckCodeImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginCheckCodeImg(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTbCheckCodeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setTbCheckCodeUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getTbCheckCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setTbCheckCodeId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/model/UserLoginResult;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;->setLoginId(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getExternParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getExternParams()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "autoLoginScene"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u5207\u6362\u8d26\u6237\uff0c\u514d\u767b\u5931\u8d25\u4e0d\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->logoutWhenAutoLoginFail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "\u6e05\u9664\u672c\u5730\u7528\u6236\u514d\u767b\u72c0\u614b logonId=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/c/c;->d(Ljava/lang/String;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "\u4fee\u6539\u5f53\u524d\u7528\u6237\u767b\u5f55\u72b6\u6001\u4e3a\u672a\u767b\u5f55"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->_log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->getAccountService()Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/accountbiz/extservice/AccountService;->setCurrentLoginState(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public sendLoginBroadcast(ZLcom/ali/user/mobile/account/model/UserLoginReq;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;)V
    .locals 3

    const-string/jumbo v0, "withpwd"

    invoke-virtual {p2}, Lcom/ali/user/mobile/account/model/UserLoginReq;->getLoginWthPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->mRegistBindType:Ljava/lang/String;

    invoke-direct {p0, p3, v1, v0, v2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/LoginServiceImpl;->sendLoginBroadcast(Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Ljava/lang/Boolean;ZLjava/lang/String;)V

    return-void
.end method
