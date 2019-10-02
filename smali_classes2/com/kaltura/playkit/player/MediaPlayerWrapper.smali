.class Lcom/kaltura/playkit/player/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/kaltura/playkit/player/PlayerEngine;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;
    }
.end annotation


# static fields
.field private static final ILLEGAL_STATEׁ_OPERATION:I = -0x26

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private appInBackground:Z

.field private assetUri:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentBufferPercentage:J

.field private currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

.field private currentState:Lcom/kaltura/playkit/PlayerState;

.field private drmClient:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

.field private eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

.field private isFirstPlayback:Z

.field private isPauseAfterPrepare:Z

.field private isPlayAfterPrepare:Z

.field private licenseUri:Ljava/lang/String;

.field private mediaPlayerView:Lcom/kaltura/playkit/player/MediaPlayerView;

.field private mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

.field private player:Landroid/media/MediaPlayer;

.field private playerDuration:J

.field private playerPosition:J

.field private prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

.field private previousState:Lcom/kaltura/playkit/PlayerState;

.field private shouldRestorePlayerToPreviousState:Z

.field private stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MediaPlayerWrapper"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    sget-object v1, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->NOT_PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isFirstPlayback:Z

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->context:Landroid/content/Context;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/kaltura/playkit/player/MediaPlayerView;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/player/MediaPlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaPlayerView:Lcom/kaltura/playkit/player/MediaPlayerView;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->initDrmClient()V

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method static synthetic access$100()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    return-void
.end method

.method private changeState(Lcom/kaltura/playkit/PlayerState;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    invoke-interface {p1, v0, v1}, Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;->onStateChanged(Lcom/kaltura/playkit/PlayerState;Lcom/kaltura/playkit/PlayerState;)V

    :cond_1
    return-void
.end method

.method private getHeadersMap()Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->context:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "?"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playkit/android-vootdev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (Linux;Android "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " MediaPlayer)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getWidevineAssetAcquireUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "widevine:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "widevine"

    const-string v1, "http"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getWidevineAssetPlaybackUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "^http:"

    const-string v1, "widevine:"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private handleContentCompleted()V
    .locals 2

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->pause()V

    iget-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->seekTo(J)V

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method private initDrmClient()V
    .locals 2

    new-instance v0, Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->drmClient:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->drmClient:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    new-instance v1, Lcom/kaltura/playkit/player/MediaPlayerWrapper$1;

    invoke-direct {v1, p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$1;-><init>(Lcom/kaltura/playkit/player/MediaPlayerWrapper;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->setEventListener(Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;)V

    return-void
.end method

.method private initializePlayer()V
    .locals 6

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->assetUri:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isFirstPlayback:Z

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->assetUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->assetUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getWidevineAssetAcquireUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->assetUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getWidevineAssetPlaybackUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playback uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaPlayerView:Lcom/kaltura/playkit/player/MediaPlayerView;

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/MediaPlayerView;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v3, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getHeadersMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->setPlayerListeners()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->drmClient:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    invoke-virtual {v2, v0}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->needToAcquireRights(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v2, v2, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v2}, Lcom/kaltura/playkit/PKMediaSource;->getDrmData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/PKDrmParams;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKDrmParams;->getLicenseUri()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->licenseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->drmClient:Lcom/kaltura/playkit/drm/WidevineClassicDrm;

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->licenseUri:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/kaltura/playkit/drm/WidevineClassicDrm;->acquireRights(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Rights acq required but no DRM Params"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isFirstPlayback:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v1, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->NOT_PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARING:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_4
    return-void
.end method

.method private savePlayerPosition()V
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'savePlayerPosition()\' on null instance of mediaplayer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerPosition:J

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playerPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PlayerEvent$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method private sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to send event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Should be blocked from sending now, because the player is restoring to the previous state."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine$EventListener;->onEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :cond_1
    return-void
.end method

.method private sendOnPreparedEvents()V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->LOADED_METADATA:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method private setPlayerListeners()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method


# virtual methods
.method public changeTrack(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    :cond_0
    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaPlayerView:Lcom/kaltura/playkit/player/MediaPlayerView;

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    iput-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerPosition:J

    return-void
.end method

.method public getBufferedPosition()J
    .locals 6

    iget-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentBufferPercentage:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kaltura/playkit/PKController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentError()Lcom/kaltura/playkit/PKError;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPKTracks()Lcom/kaltura/playkit/player/PKTracks;
    .locals 8

    new-instance v7, Lcom/kaltura/playkit/player/PKTracks;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/kaltura/playkit/player/PKTracks;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;III)V

    return-object v7
.end method

.method public getPlaybackInfo()Lcom/kaltura/playkit/PlaybackInfo;
    .locals 12

    new-instance v11, Lcom/kaltura/playkit/PlaybackInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-long v9, v0

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/kaltura/playkit/PlaybackInfo;-><init>(JJJJJ)V

    return-object v11
.end method

.method public getPlaybackRate()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getView()Lcom/kaltura/playkit/player/PlayerView;
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "getView "

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaPlayerView:Lcom/kaltura/playkit/player/MediaPlayerView;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "load"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v1, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARING:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->NOT_PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    :cond_0
    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->mediaSourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARING:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->initializePlayer()V

    :cond_2
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentBufferPercentage:J

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onCompletion"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->handleContentCompleted()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError what = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {p3, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, -0x26

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->release()V

    iget-object p2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    :try_start_0
    iget-object p2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    iget-object p3, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->assetUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->getHeadersMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->restore()V

    return p1

    :catch_0
    move-exception p2

    sget-object p3, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    sget-object p2, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return p1

    :cond_0
    sget-object p2, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return p1
.end method

.method public onOrientationChanged()V
    .locals 0

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isPlayAfterPrepare = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " appInBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->appInBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$2;-><init>(Lcom/kaltura/playkit/player/MediaPlayerWrapper;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-boolean p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->appInBackground:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendOnPreparedEvents()V

    iget-boolean p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->play()V

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->pause()V

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public play()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play prepareState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPlayAfterPrepare:Z

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->isPauseAfterPrepare:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public release()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->appInBackground:Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v2, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->savePlayerPosition()V

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->pause()V

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "replay "

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'replay()\' on null instance of the mediaplayer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->seekTo(J)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->REPLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public restore()V
    .locals 5

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore prepareState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->appInBackground:Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v2, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->play()V

    iget-wide v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerPosition:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerPosition:J

    invoke-virtual {p0, v1, v2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->seekTo(J)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->pause()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->destroy()V

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Error restore while player is not prepared"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setEventListener(Lcom/kaltura/playkit/player/PlayerEngine$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "setPlaybackRate is not supported since RequiresApi(api = Build.VERSION_CODES.M"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public setStateChangedListener(Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    return-void
.end method

.method public startFrom(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Restoring player from previous known position. So skip this block."

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFrom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    long-to-int p1, p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    sget-object v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->NOT_PREPARED:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    sget-object p1, Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;->PREPARING:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->prepareState:Lcom/kaltura/playkit/player/MediaPlayerWrapper$PrepareState;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->playerDuration:J

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
