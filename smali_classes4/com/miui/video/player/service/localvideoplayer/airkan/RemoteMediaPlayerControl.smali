.class public Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;
.super Ljava/lang/Object;
.source "RemoteMediaPlayerControl.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;


# static fields
.field public static final CLARITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteMediaPlayerControl"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field private mDeviceName:Ljava/lang/String;

.field protected mDuration:J

.field protected mIsPlaying:Z

.field private mManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

.field private mTitle:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field private mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

.field protected mWantedPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    return-void
.end method

.method private createExtras()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MiuiVideo/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method private getFileForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

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
    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/base/utils/AndroidUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl$1;

    invoke-direct {v6, p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/video/framework/utils/SafeDBUtil;->safeQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/framework/utils/SafeDBUtil$QueryHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private makeGlobalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/video/base/utils/AndroidUtils;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canBuffering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getLocalDuration()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getVolume()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackRate()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public moveTo(I)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public playTo(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getDeviceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/milink/api/v1/MilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mDeviceName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 0

    return-void
.end method

.method public setSpName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVideoManager(Lcom/milink/api/v1/MilinkClientManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    return-void
.end method

.method public setVideoUri(Ljava/lang/String;IJIILjava/lang/String;)V
    .locals 0

    iput-object p7, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mWantedPosition:J

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoUri(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoURI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getFileForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mTitle:Ljava/lang/String;

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mWantedPosition:J

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setVolume(I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start play "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mTitle:Ljava/lang/String;

    iget-wide v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mWantedPosition:J

    long-to-int v5, v0

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    invoke-virtual/range {v2 .. v8}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->stopPlay()Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public takeBack()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->mVideoManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->disconnect()Lcom/milink/api/v1/type/ReturnCode;

    :cond_0
    return-void
.end method

.method public togglePause()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->start()V

    :goto_0
    return-void
.end method
