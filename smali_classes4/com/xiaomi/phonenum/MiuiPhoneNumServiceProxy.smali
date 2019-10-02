.class Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;
.super Ljava/lang/Object;
.source "MiuiPhoneNumServiceProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MiuiPhoneNumKeeper"


# instance fields
.field private logger:Lcom/xiaomi/phonenum/utils/Logger;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisposed:Z

.field private mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSetupDone:Z

.field private setUpLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mSetupDone:Z

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mDisposed:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mAppId:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUpLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/simactivate/service/IPhoneNumService;)Lcom/xiaomi/simactivate/service/IPhoneNumService;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mSetupDone:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUpLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;)Lcom/xiaomi/phonenum/utils/Logger;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    return-object p0
.end method

.method private checkSetUp()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->waitSetUp()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mSetupDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mDisposed:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MpHelper is not setup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private waitSetUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUpLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method


# virtual methods
.method public blockObtainPhoneNum(IZ)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->checkSetUp()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    iget-object v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mAppId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, p1, p2}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->blockObtainPhoneNum(ILjava/lang/String;IZ)Landroid/os/Bundle;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    invoke-direct {p2}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->bundle(Landroid/os/Bundle;)Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/phonenum/bean/PhoneNum$Builder;->build()Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->setUpLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mSetupDone:Z

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mDisposed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    return-void
.end method

.method public invalidatePhoneNum(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->checkSetUp()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    iget-object v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mAppId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, p1}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->invalidatePhoneNum(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public invalidateVerifiedToken(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->checkSetUp()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mService:Lcom/xiaomi/simactivate/service/IPhoneNumService;

    iget-object v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mAppId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, p1}, Lcom/xiaomi/simactivate/service/IPhoneNumService;->invalidateVerifiedToken(ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mSetupDone:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->NONE:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;->onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.simactivate.service.ACTION_BIND_SYSTEM_PHONE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.simactivate.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy$1;-><init>(Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    iput-object v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/phonenum/MiuiPhoneNumServiceProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->UNKNOW:Lcom/xiaomi/phonenum/bean/Error;

    invoke-interface {p1, v0}, Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;->onSetupFinished(Lcom/xiaomi/phonenum/bean/Error;)V

    :cond_1
    return-void
.end method
