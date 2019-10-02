.class public Lcom/milink/api/v1/MilinkClientManager;
.super Ljava/lang/Object;
.source "MilinkClientManager.java"

# interfaces
.implements Lcom/milink/api/v1/IMilinkClientManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MilinkClientManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceName:Ljava/lang/String;

.field private mIsbound:Z

.field private mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

.field private mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

.field private mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

.field private mService:Lcom/milink/api/v1/aidl/IMcs;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    new-instance v0, Lcom/milink/api/v1/MilinkClientManager$1;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/MilinkClientManager$1;-><init>(Lcom/milink/api/v1/MilinkClientManager;)V

    iput-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/milink/api/v1/McsDelegate;

    invoke-direct {p1}, Lcom/milink/api/v1/McsDelegate;-><init>()V

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    new-instance p1, Lcom/milink/api/v1/McsDataSource;

    invoke-direct {p1}, Lcom/milink/api/v1/McsDataSource;-><init>()V

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    new-instance p1, Lcom/milink/api/v1/McsDeviceListener;

    invoke-direct {p1}, Lcom/milink/api/v1/McsDeviceListener;-><init>()V

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/MilinkClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object p0
.end method

.method static synthetic access$202(Lcom/milink/api/v1/MilinkClientManager;Lcom/milink/api/v1/aidl/IMcs;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 0

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    return-object p1
.end method

.method static synthetic access$300(Lcom/milink/api/v1/MilinkClientManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDelegate;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    return-object p0
.end method

.method static synthetic access$500(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDataSource;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    return-object p0
.end method

.method static synthetic access$600(Lcom/milink/api/v1/MilinkClientManager;)Lcom/milink/api/v1/McsDeviceListener;
    .locals 0

    iget-object p0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    return-object p0
.end method

.method private bindMilinkClientService()V
    .locals 4

    iget-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/milink/api/v1/aidl/IMcs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.milink.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    :cond_0
    return-void
.end method

.method private getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->Error:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->InvalidUrl:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotSupport:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unbindMilinkClientService()V
    .locals 2

    iget-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/milink/api/v1/MilinkClientManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mIsbound:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->unbindMilinkClientService()V

    return-void
.end method

.method public connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->connect(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public disconnect()Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->disconnect()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPlaybackDuration()I
    .locals 2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackDuration()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlaybackProgress()I
    .locals 2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackProgress()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlaybackRate()I
    .locals 2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackRate()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVolume()I
    .locals 2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->getVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 0

    invoke-direct {p0}, Lcom/milink/api/v1/MilinkClientManager;->bindMilinkClientService()V

    return-void
.end method

.method public rotatePhoto(Ljava/lang/String;ZF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1, p2, p3}, Lcom/milink/api/v1/aidl/IMcs;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDataSource:Lcom/milink/api/v1/McsDataSource;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDataSource;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    return-void
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDelegate:Lcom/milink/api/v1/McsDelegate;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDelegate;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mMcsDeviceListener:Lcom/milink/api/v1/McsDeviceListener;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/McsDeviceListener;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/milink/api/v1/MilinkClientManager;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackProgress(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackRate(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public setVolume(I)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setVolume(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/aidl/IMcs;->show(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object p1
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1

    return-object p1
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 7

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    sget-object v0, Lcom/milink/api/v1/MilinkClientManager$2;->$SwitchMap$com$milink$api$v1$type$MediaType:[I

    invoke-virtual {p7}, Lcom/milink/api/v1/type/MediaType;->ordinal()I

    move-result p7

    aget p7, v0, p7

    packed-switch p7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :pswitch_1
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->InvalidParams:Lcom/milink/api/v1/type/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->startShow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method

.method public startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object p1

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    sget-object v0, Lcom/milink/api/v1/type/SlideMode;->Recyle:Lcom/milink/api/v1/type/SlideMode;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->startSlideshow(IZ)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_1
    return-object p1
.end method

.method public stopPlay()Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->stopPlay()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method

.method public stopShow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->stopShow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method

.method public stopSlideshow()Lcom/milink/api/v1/type/ReturnCode;
    .locals 1

    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v0, p0, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    invoke-interface {v0}, Lcom/milink/api/v1/aidl/IMcs;->stopSlideshow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method

.method public zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;
    .locals 11

    move-object v1, p0

    iget-object v0, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->NotConnected:Lcom/milink/api/v1/type/ReturnCode;

    return-object v0

    :cond_0
    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    :try_start_0
    iget-object v2, v1, Lcom/milink/api/v1/MilinkClientManager;->mService:Lcom/milink/api/v1/aidl/IMcs;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/milink/api/v1/aidl/IMcs;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/milink/api/v1/MilinkClientManager;->getReturnCode(I)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v0, Lcom/milink/api/v1/type/ReturnCode;->ServiceException:Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    return-object v0
.end method
