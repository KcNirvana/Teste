.class public Lcom/ali/user/mobile/accountbiz/a;
.super Ljava/lang/Object;
.source "AccountManagerFacadeBiz.java"


# instance fields
.field protected a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

.field protected b:Lcom/ali/user/mobile/account/facade/AccountManagerFacade;

.field c:Lcom/ali/user/mobile/accountbiz/b;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field protected j:Lcom/ali/user/mobile/account/bean/Tid;

.field private k:Lcom/ali/user/mobile/account/bean/Tid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ali/user/mobile/accountbiz/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    iput-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-static {p1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/a;->c:Lcom/ali/user/mobile/accountbiz/b;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/account/facade/AccountManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/facade/AccountManagerFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->b:Lcom/ali/user/mobile/account/facade/AccountManagerFacade;

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/a;->a()V

    const-string/jumbo v0, "AccountManagerFacadeBiz"

    const-string/jumbo v1, "ActivityApplication: "

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ali/user/mobile/account/bean/Tid;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/bean/Tid;-><init>()V

    iput-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setTid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setVimei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->j:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/a;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v0}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryDeviceInfo()Lcom/ali/user/mobile/account/bean/DeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ali/user/mobile/account/bean/Tid;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/bean/Tid;-><init>()V

    iput-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/b/b;->a()Lcom/alipay/mobile/common/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/a;->k:Lcom/ali/user/mobile/account/bean/Tid;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setTid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;Ljava/util/List;)Lcom/ali/user/mobile/account/model/MobileSecurityResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ali/user/mobile/account/model/MobileSecurityResult;"
        }
    .end annotation

    new-instance v1, Lcom/ali/user/mobile/account/bean/Tid;

    invoke-direct {v1}, Lcom/ali/user/mobile/account/bean/Tid;-><init>()V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/account/bean/Tid;->setTid(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/a;->b:Lcom/ali/user/mobile/account/facade/AccountManagerFacade;

    invoke-interface {v2, v1, p2}, Lcom/ali/user/mobile/account/facade/AccountManagerFacade;->updateWalletLoginAuth(Lcom/ali/user/mobile/account/bean/Tid;Ljava/util/List;)Lcom/ali/user/mobile/account/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "AccountManagerFacadeBiz"

    const-string/jumbo v2, "\u66f4\u65b0\u514d\u767b\u5173\u7cfb\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
