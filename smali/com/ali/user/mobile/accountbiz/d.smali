.class public Lcom/ali/user/mobile/accountbiz/d;
.super Ljava/lang/Object;
.source "TidGetter.java"


# instance fields
.field private a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ali/user/mobile/accountbiz/extservice/manager/AntExtServiceManager;->getDeviceService(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/d;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    return-void
.end method

.method private b()Lcom/ali/user/mobile/account/bean/Tid;
    .locals 3

    new-instance v0, Lcom/ali/user/mobile/account/bean/Tid;

    invoke-direct {v0}, Lcom/ali/user/mobile/account/bean/Tid;-><init>()V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/d;->a:Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;

    invoke-interface {v1}, Lcom/ali/user/mobile/accountbiz/extservice/DeviceService;->queryCertification()Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/account/bean/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/account/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/account/bean/Tid;->setVimsi(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/account/bean/Tid;
    .locals 2

    const-string/jumbo v0, "TidGetter"

    const-string/jumbo v1, "getClientTid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/d;->b()Lcom/ali/user/mobile/account/bean/Tid;

    move-result-object v0

    return-object v0
.end method
