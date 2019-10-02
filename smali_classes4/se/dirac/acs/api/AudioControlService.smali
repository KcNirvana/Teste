.class public Lse/dirac/acs/api/AudioControlService;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$SetUserFunctor;,
        Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;,
        Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;,
        Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;,
        Lse/dirac/acs/api/AudioControlService$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "se.dirac.acs-api"


# instance fields
.field private final asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/dirac/acs/api/AsyncHelper<",
            "Ljava/lang/Boolean;",
            "Lse/dirac/acs/api/OutputSettings;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

.field private final context:Landroid/content/Context;

.field private deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

.field private final locale:Ljava/lang/String;

.field private mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

.field private routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

.field private service:Lse/dirac/acs/api/IAudioControlService;

.field private setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

.field private settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lse/dirac/acs/api/AudioControlService$2;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/AudioControlService$2;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    new-instance v0, Lse/dirac/acs/api/AsyncHelper;

    new-instance v1, Lse/dirac/acs/api/AudioControlService$3;

    invoke-direct {v1, p0}, Lse/dirac/acs/api/AudioControlService$3;-><init>(Lse/dirac/acs/api/AudioControlService;)V

    invoke-direct {v0, v1}, Lse/dirac/acs/api/AsyncHelper;-><init>(Lse/dirac/acs/api/AsyncHelper$Function;)V

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    iput-object p2, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    invoke-interface {p2, p1}, Lse/dirac/acs/api/IAudioControlService;->registerCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception thrown in registerCallback"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;Lse/dirac/acs/api/AudioControlService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;-><init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;)V

    return-void
.end method

.method static synthetic access$400(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService;->deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    return-object p0
.end method

.method static synthetic access$500(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0, p1}, Lse/dirac/acs/api/AudioControlService;->ensureMainThreadThrow(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method static synthetic access$600(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    return-object p0
.end method

.method static synthetic access$602(Lse/dirac/acs/api/AudioControlService;Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    return-object p1
.end method

.method static synthetic access$700(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SetUserFunctor;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    return-object p0
.end method

.method static synthetic access$800(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    return-object p0
.end method

.method static synthetic access$900(Lse/dirac/acs/api/AudioControlService;)Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;
    .locals 0

    iget-object p0, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    return-object p0
.end method

.method public static bind(Landroid/content/Context;Lse/dirac/acs/api/AudioControlService$Connection;)Z
    .locals 2

    invoke-static {}, Lse/dirac/acs/api/AudioControlService;->getStartIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1, p0}, Lse/dirac/acs/api/AudioControlService$Connection;->access$002(Lse/dirac/acs/api/AudioControlService$Connection;Landroid/content/Context;)Landroid/content/Context;

    invoke-static {p1}, Lse/dirac/acs/api/AudioControlService$Connection;->access$200(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/ServiceConnection;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private ensureMainThreadThrow(Ljava/lang/RuntimeException;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lse/dirac/acs/api/AudioControlService$4;

    invoke-direct {v1, p0, p1}, Lse/dirac/acs/api/AudioControlService$4;-><init>(Lse/dirac/acs/api/AudioControlService;Ljava/lang/RuntimeException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getStartIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "se.dirac.acs"

    const-string v2, "se.dirac.acs.AudioControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lse/dirac/acs/api/Output;",
            ")",
            "Ljava/util/List<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/IAudioControlService;->listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception thrown in listDevices"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static unbind(Landroid/content/Context;Lse/dirac/acs/api/AudioControlService$Connection;)V
    .locals 0

    invoke-static {p1}, Lse/dirac/acs/api/AudioControlService$Connection;->access$200(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/ServiceConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->callback:Lse/dirac/acs/api/IAudioControlServiceCallback;

    invoke-interface {v0, v1}, Lse/dirac/acs/api/IAudioControlService;->unregisterCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in unregisterCallback"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDevice(J)Lse/dirac/acs/api/Device;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lse/dirac/acs/api/IAudioControlService;->getDevice(JLjava/lang/String;)Lse/dirac/acs/api/Device;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception thrown in getDevice call"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDevice(Ljava/lang/String;)Lse/dirac/acs/api/Device;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lse/dirac/acs/api/IAudioControlService;->getDeviceByProductID(Ljava/lang/String;Ljava/lang/String;)Lse/dirac/acs/api/Device;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in getDevice"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0}, Lse/dirac/acs/api/IAudioControlService;->getInstallationId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in getInstallId call"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutput(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->getCurrentOutputSettings(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in getOutput"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0}, Lse/dirac/acs/api/IAudioControlService;->getUser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception thrown in getUser"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVendorData(Lse/dirac/acs/api/Device;)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    iget-wide v1, p1, Lse/dirac/acs/api/Device;->id:J

    invoke-interface {v0, v1, v2}, Lse/dirac/acs/api/IAudioControlService;->getDeviceVendorData(J)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in getVendorData"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public listDevices(Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/dirac/acs/api/Output;",
            ")",
            "Ljava/util/List<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->locale:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lse/dirac/acs/api/AudioControlService;->listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->deviceListChangedFunctor:Lse/dirac/acs/api/AudioControlService$DeviceListChangedFunctor;

    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->routingChangedFunctor:Lse/dirac/acs/api/AudioControlService$RoutingChangedFunctor;

    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    return-void
.end method

.method public registerCallback(Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->settingsChangedFunctor:Lse/dirac/acs/api/AudioControlService$SettingsChangedFunctor;

    return-void
.end method

.method public requestSync(Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;)Z
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    if-nez v0, :cond_1

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0}, Lse/dirac/acs/api/IAudioControlService;->requestSync()I

    move-result v0

    invoke-static {v0}, Lse/dirac/acs/api/SyncRequestReply;->fromInt(I)Lse/dirac/acs/api/SyncRequestReply;

    move-result-object v0

    sget-object v1, Lse/dirac/acs/api/SyncRequestReply;->NOT_STARTED:Lse/dirac/acs/api/SyncRequestReply;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lse/dirac/acs/api/AudioControlService;->mSyncDoneFunctor:Lse/dirac/acs/api/AudioControlService$SyncDoneFunctor;

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sync already requested"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setDisabled(Lse/dirac/acs/api/Output;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->setDisabled(Lse/dirac/acs/api/Output;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in setDisabled"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setOutput(Lse/dirac/acs/api/OutputSettings;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in setOutput"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOutput(Lse/dirac/acs/api/OutputSettings;Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->asyncSetOutput:Lse/dirac/acs/api/AsyncHelper;

    invoke-static {p2}, Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;->access$300(Lse/dirac/acs/api/AudioControlService$OnSetOutputDone;)Lse/dirac/acs/api/AsyncHelper$Function;

    move-result-object p2

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lse/dirac/acs/api/AsyncHelper;->execute(Ljava/lang/Object;Lse/dirac/acs/api/AsyncHelper$Function;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService;->setUserFunctor:Lse/dirac/acs/api/AudioControlService$SetUserFunctor;

    const/4 v2, 0x1

    new-array v3, v2, [Z

    aput-boolean v0, v3, v0

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lse/dirac/acs/api/AudioControlService$1;

    invoke-direct {v2, p0, v3, p1, v4}, Lse/dirac/acs/api/AudioControlService$1;-><init>(Lse/dirac/acs/api/AudioControlService;[ZLjava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lse/dirac/acs/api/AudioControlService;->registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V

    invoke-virtual {p0, p1, p2}, Lse/dirac/acs/api/AudioControlService;->setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "se.dirac.acs-api"

    const-string p2, "Set user interrupted, somehow"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lse/dirac/acs/api/AudioControlService;->registerCallback(Lse/dirac/acs/api/AudioControlService$SetUserFunctor;)V

    aget-boolean p1, v3, v0

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public setUserAsync(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1, p2}, Lse/dirac/acs/api/IAudioControlService;->setUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Exception thrown in requestSync"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public userHasLicense(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lse/dirac/acs/api/AudioControlService;->service:Lse/dirac/acs/api/IAudioControlService;

    invoke-interface {v0, p1}, Lse/dirac/acs/api/IAudioControlService;->userHasLicense(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception thrown in userHasLicense"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
