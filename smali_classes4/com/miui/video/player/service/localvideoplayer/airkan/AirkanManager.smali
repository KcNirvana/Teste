.class public Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;
.super Ljava/lang/Object;
.source "AirkanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanExistDeviceInfo;,
        Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;,
        Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;
    }
.end annotation


# static fields
.field public static AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String; = null

.field private static final AIRKAN_VOLUME_DELTA:F = 10.0f

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_LOCAL:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAirkanOnChangedListener:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;

.field private mContext:Landroid/content/Context;

.field mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDevices:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingDeviceName:Ljava/lang/String;

.field private mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

.field private mState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoManager:Lcom/milink/api/v1/MilinkClientManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AirkanManager"

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDevices:Ljava/util/Hashtable;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/miui/video/player/service/R$string;->lv_airkan_device_xiaomi_phone:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String;

    sget-object p1, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->initAirkan()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDevices:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onRemotePlayStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onRemotePlayStoped()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onRemotePlayPaused()V

    return-void
.end method

.method private decreaseDeviceVolume()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getVolume()F

    move-result v0

    const-string v1, "AirkanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current airkan volume:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v1, "AirkanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrease airkan volume to:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->setVolume(F)V

    return-void
.end method

.method private static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getDeviceName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "XiaoMi"

    return-object p0
.end method

.method private getLocalVideoControlDate()Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setPosition(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setPlaying(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setDuration(I)V

    :cond_0
    return-object v0
.end method

.method private getRemoteVideoControlDate()Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;

    invoke-direct {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setDuration(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setPosition(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setPlaying(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->setURL(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private increaseDeviceVolume()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getVolume()F

    move-result v0

    const-string v1, "AirkanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current airkan volume:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    :cond_0
    const-string v1, "AirkanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increase airkan volume to:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->setVolume(F)V

    return-void
.end method

.method private initAirkan()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/milink/api/v1/MilinkClientManager;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v1, v0}, Lcom/milink/api/v1/MilinkClientManager;->setDeviceName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->setVideoManager(Lcom/milink/api/v1/MilinkClientManager;)V

    return-void
.end method

.method private onRemotePlayPaused()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    return-void
.end method

.method private onRemotePlayStarted()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    return-void
.end method

.method private onRemotePlayStoped()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    return-void
.end method

.method private playInLocal(Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    const-string v0, "AirkanManager"

    const-string v1, "playInLocal "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->getPosition()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->start()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x2710

    div-int/lit16 v1, p1, 0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private playInRemote(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mUri:Landroid/net/Uri;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    invoke-virtual {p3}, Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;->getPosition()I

    move-result p3

    const-string v0, "AirkanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "air play url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {v0, p2, v1, p3}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->setVideoUri(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->playTo(Ljava/lang/String;)V

    return-void
.end method

.method private stopLocalPlay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->pause()V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDeviceManager()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    const-string v0, "AirkanManager"

    const-string v1, "Start Unbind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    const-string v0, "AirkanManager"

    const-string v1, "End Unbind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDevices:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalMediaControl()Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    return-object v0
.end method

.method public getPlayingDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlayingInLocal()Z
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayingRemote()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;->onStatusChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    :cond_0
    return-void
.end method

.method public onVolumeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->decreaseDeviceVolume()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->increaseDeviceVolume()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public openDeviceManager()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AirkanManager"

    const-string v1, "Bind Phone Service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->open()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AirkanManager"

    const-string v2, "already bound."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public playToDevice(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->playToDevice(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public playToDevice(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    const-string v0, "AirkanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Play to device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getLocalVideoControlDate()Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->playInRemote(Ljava/lang/String;Landroid/net/Uri;Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->stopLocalPlay()V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    return-void
.end method

.method public queryAirkanDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDevices:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDevices:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registeOnDeviceChangeListener(Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public registerStatusObserver(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setAirkanOnChangedListener(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mAirkanOnChangedListener:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;

    return-void
.end method

.method public setLocalMediaControl(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mLocalMediaControl:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    return-void
.end method

.method public stopRemotePlay()V
    .locals 2

    const-string v0, "AirkanManager"

    const-string v1, "call stop and tackback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->stop()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->takeBack()V

    return-void
.end method

.method public takebackToPhone()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mState:I

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->AIRKAN_DEVICE_XIAOMI_PHONE:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mPlayingDeviceName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getRemoteVideoControlDate()Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->stop()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->takeBack()V

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->onAirkanChanged(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$AirkanChangedEvent;)V

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->playInLocal(Lcom/miui/video/player/service/localvideoplayer/airkan/VideoControlData;)V

    return-void
.end method

.method public unRegisterStatusObserver(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisteOnDeviceChangeListener(Lcom/miui/video/player/service/localvideoplayer/airkan/IDeviceDiscoveryListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->mDeviceChangedListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
