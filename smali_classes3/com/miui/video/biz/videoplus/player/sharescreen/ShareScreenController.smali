.class public Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;
.super Ljava/lang/Object;
.source "ShareScreenController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController;
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenImageController;
.implements Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController;
.implements Lcom/milink/api/v1/MilinkClientManagerDelegate;
.implements Lcom/milink/api/v1/MilinkClientManagerDataSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareScreenController"


# instance fields
.field private mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPhotoPath:Ljava/lang/String;

.field private mDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInPlaybackState:Z

.field private mIsServiceRunning:Z

.field private mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

.field private mOnShareScreenServiceListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnVideoListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    new-instance v0, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mContextRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/milink/api/v1/MilinkClientManager;

    invoke-direct {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/milink/api/v1/IMilinkClientManager;->setDeviceName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {p1, p0}, Lcom/milink/api/v1/IMilinkClientManager;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {p1, p0}, Lcom/milink/api/v1/IMilinkClientManager;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

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

.method private getFileForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/storage/emulated/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-string v0, "127.0.0.1"

    invoke-static {v1}, Lcom/miui/video/base/utils/AndroidUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController$1;

    invoke-direct {v7, p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController$1;-><init>(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;)V

    invoke-static/range {v1 .. v7}, Lcom/miui/video/framework/utils/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/framework/utils/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private notifyDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyDeviceConnectSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onDeviceConnectSuccess()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyDeviceDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onDeviceDisconnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyDeviceListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onDeviceListChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyOnVideoClose()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;->onCloseOnRemote()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyOnVideoPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;->onPauseOnRemote()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyOnVideoStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;->onStartOnRemote()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyServiceStarted()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onServiceStarted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyServiceStopped()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;->onServiceStopped()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public closeOnRemote()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "closeOnRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->stopPlay()Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public connectDevice(Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/16 v1, 0xbb8

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/milink/api/v1/IMilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->disconnectDevice()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/milink/api/v1/IMilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    return-void
.end method

.method public disconnectDevice()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->disconnect()Lcom/milink/api/v1/type/ReturnCode;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceDisconnected()V

    :cond_0
    return-void
.end method

.method public getConnectedDevice()Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    return-object v0
.end method

.method public getCurrentPositionOnRemote()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->getPlaybackProgress()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationOnRemote()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->getPlaybackDuration()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFoundDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;->getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "ShareScreenController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNextPhoto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;->getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "ShareScreenController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrevPhoto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getVolumeOnRemote()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public isConnectedDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPlayBackStateOnRemote()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    return v0
.end method

.method public isPlayingOnRemote()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->getPlaybackRate()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShareScreenServiceRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsServiceRunning:Z

    return v0
.end method

.method public isShowingPhotoOnRemote()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClose()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "onClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->isConnectedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceDisconnected()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyServiceStopped()V

    return-void
.end method

.method public onConnected()V
    .locals 3

    const-string v0, "ShareScreenController"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceConnectSuccess()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v1, "screen_on_tv_player_local"

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "play_id"

    sget-object v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    :cond_0
    return-void
.end method

.method public onConnectedFailed(Lcom/milink/api/v1/type/ErrorCode;)V
    .locals 3

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedFailed \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceConnectFail(Lcom/milink/api/v1/type/ErrorCode;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v0, "screen_on_tv_player_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    :cond_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/type/DeviceType;)V
    .locals 3

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceFound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/milink/api/v1/type/DeviceType;->TV:Lcom/milink/api/v1/type/DeviceType;

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceListChanged()V

    :cond_1
    return-void
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceListChanged()V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const-string v0, "ShareScreenController"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceDisconnected()V

    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 0

    return-void
.end method

.method public onNextAudio(Z)V
    .locals 0

    return-void
.end method

.method public onOpen()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "onOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyServiceStarted()V

    return-void
.end method

.method public onPaused()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "onPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyOnVideoPause()V

    return-void
.end method

.method public onPlaying()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "onPlaying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyOnVideoStart()V

    return-void
.end method

.method public onPrevAudio(Z)V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyOnVideoClose()V

    return-void
.end method

.method public onVolume(I)V
    .locals 3

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pauseOnRemote()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "pauseOnRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/milink/api/v1/IMilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public registerOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public releaseShareScreenService()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0, v1}, Lcom/milink/api/v1/IMilinkClientManager;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0, v1}, Lcom/milink/api/v1/IMilinkClientManager;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    :cond_0
    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public seekToOnRemote(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/IMilinkClientManager;->setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public setDataSourceOnRemote(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->getFileForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    sget-object v6, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    const-wide/16 v4, 0x0

    move v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/milink/api/v1/IMilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    move-result-object p2

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSourceOnRemote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", code = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/milink/api/v1/type/ReturnCode;->OK:Lcom/milink/api/v1/type/ReturnCode;

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;->setConnecting(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->notifyDeviceDisconnected()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsInPlaybackState:Z

    :goto_0
    return-void
.end method

.method public setVolumeOnRemote(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0, p1}, Lcom/milink/api/v1/IMilinkClientManager;->setVolume(I)Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public showPhotoOnRemote(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ShareScreenController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPhotoOnRemote : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/milink/api/v1/IMilinkClientManager;->show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public startOnRemote()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "startOnRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/milink/api/v1/IMilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public startShareScreenService()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsServiceRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsServiceRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->open()V

    :cond_0
    return-void
.end method

.method public startShowPhotoOnRemote()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "startShowPhotoOnRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->startShow()Lcom/milink/api/v1/type/ReturnCode;

    return-void
.end method

.method public stopShareScreenService()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsServiceRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->close()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mIsServiceRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mConnectedDevice:Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenDevice;

    :cond_0
    return-void
.end method

.method public stopShowPhotoOnRemote()V
    .locals 2

    const-string v0, "ShareScreenController"

    const-string v1, "stopShowPhotoOnRemote"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    invoke-interface {v0}, Lcom/milink/api/v1/IMilinkClientManager;->stopShow()Lcom/milink/api/v1/type/ReturnCode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    return-void
.end method

.method public unRegisterOnVideoListenerOnRemote(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenVideoController$OnVideoListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnVideoListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterShareScreenServiceListener(Lcom/miui/video/biz/videoplus/player/sharescreen/IShareScreenController$OnShareScreenServiceListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mOnShareScreenServiceListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public zoomPhotoOnRemote(Ljava/lang/String;IIIIIIF)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    const-string v2, "ShareScreenController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoomPhotoOnRemote : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mMiLinkManager:Lcom/milink/api/v1/IMilinkClientManager;

    iget-object v3, v0, Lcom/miui/video/biz/videoplus/player/sharescreen/ShareScreenController;->mCurrentPhotoPath:Ljava/lang/String;

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/milink/api/v1/IMilinkClientManager;->zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method
