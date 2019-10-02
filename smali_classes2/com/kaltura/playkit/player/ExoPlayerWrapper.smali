.class public Lcom/kaltura/playkit/player/ExoPlayerWrapper;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"

# interfaces
.implements Lcom/kaltura/playkit/player/PlayerEngine;
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;


# static fields
.field private static final DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private context:Landroid/content/Context;

.field private crossProtocolRedirectEnabled:Z

.field private currentError:Lcom/kaltura/playkit/PKError;

.field private currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

.field private currentState:Lcom/kaltura/playkit/PlayerState;

.field private drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

.field private drmSessionManager:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;

.field private eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

.field private exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

.field private httpDataSourceRequestParams:Lcom/kaltura/playkit/PKRequestParams;

.field private isSeeking:Z

.field private isSurfaceSecured:Z

.field private lastKnownPlaybackRate:F

.field private lastKnownVolume:F

.field private lastSelectedTrackIds:[Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private metadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kaltura/playkit/player/metadata/PKMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playerPosition:J

.field private playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

.field private playerWindow:I

.field private preferredLanguageWasSelected:Z

.field private previousState:Lcom/kaltura/playkit/PlayerState;

.field private shouldGetTracksInfo:Z

.field private shouldResetPlayerPosition:Z

.field private shouldRestorePlayerToPreviousState:Z

.field private sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

.field private stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

.field private trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private tracks:Lcom/kaltura/playkit/player/PKTracks;

.field private tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

.field private useTextureView:Z

.field private window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ExoPlayerWrapper"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/kaltura/playkit/player/BaseExoplayerView;Lcom/kaltura/playkit/player/PlayerSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentError:Lcom/kaltura/playkit/PKError;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerPosition:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    iput v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownPlaybackRate:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->metadataList:Ljava/util/List;

    const-string v0, "none"

    const-string v1, "none"

    const-string v2, "none"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastSelectedTrackIds:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initTracksInfoListener()Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initDrmSessionListener()Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;-><init>()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->setEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iput-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

    iput-object p3, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object p1

    sget-object p2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    invoke-static {p1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/kaltura/playkit/player/PlayerSettings;)V
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/ExoPlayerView;

    invoke-direct {v0, p1}, Lcom/kaltura/playkit/player/ExoPlayerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;-><init>(Landroid/content/Context;Lcom/kaltura/playkit/player/BaseExoplayerView;Lcom/kaltura/playkit/player/PlayerSettings;)V

    return-void
.end method

.method static synthetic access$002(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/player/PKTracks;)Lcom/kaltura/playkit/player/PKTracks;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->tracks:Lcom/kaltura/playkit/player/PKTracks;

    return-object p1
.end method

.method static synthetic access$102(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->preferredLanguageWasSelected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->preferredLanguageWasSelected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->selectPreferredTracksLanguage()V

    return-void
.end method

.method static synthetic access$502(Lcom/kaltura/playkit/player/ExoPlayerWrapper;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastSelectedTrackIds:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method static synthetic access$702(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PKError;)Lcom/kaltura/playkit/PKError;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentError:Lcom/kaltura/playkit/PKError;

    return-object p1
.end method

.method private buildCustomHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 7

    new-instance v6, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->httpDataSourceRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    iget-boolean v5, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->crossProtocolRedirectEnabled:Z

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/kaltura/playkit/player/CustomHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/kaltura/playkit/PKRequestParams;IIZ)V

    return-object v6
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildHttpDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private buildExoMediaSource(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4

    iget-object v0, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->getUrl()Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    :cond_1
    sget-object v1, Lcom/kaltura/playkit/player/ExoPlayerWrapper$3;->$SwitchMap$com$kaltura$playkit$PKMediaFormat:[I

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaFormat;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private buildHttpDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    iget-boolean v5, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->crossProtocolRedirectEnabled:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-object v6
.end method

.method private changeState(Lcom/kaltura/playkit/PlayerState;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    invoke-interface {p1, v0, v1}, Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;->onStateChanged(Lcom/kaltura/playkit/PlayerState;Lcom/kaltura/playkit/PlayerState;)V

    :cond_1
    return-void
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "?"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playkit/android-vootdev "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Linux;Android "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ExoPlayerLib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "2.8.4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initDrmSessionListener()Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;-><init>(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V

    return-object v0
.end method

.method private initTracksInfoListener()Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper$1;-><init>(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V

    return-object v0
.end method

.method private initializePlayer()V
    .locals 8

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initializeTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    new-instance v1, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildCustomHttpDataSourceFactory()Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v3

    iget-object v4, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->drmSessionListener:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;)V

    iput-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->drmSessionManager:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;

    new-instance v1, Lcom/kaltura/playkit/player/CustomRendererFactory;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->drmSessionManager:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/kaltura/playkit/player/CustomRendererFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/drm/DrmSessionManager;I)V

    new-instance v2, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;-><init>()V

    iget-object v3, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/PlayerSettings;->getLoadControlBuffers()Lcom/kaltura/playkit/player/LoadControlBuffers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kaltura/playkit/player/LoadControlBuffers;->getMinPlayerBufferMs()I

    move-result v3

    iget-object v5, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v5}, Lcom/kaltura/playkit/player/PlayerSettings;->getLoadControlBuffers()Lcom/kaltura/playkit/player/LoadControlBuffers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kaltura/playkit/player/LoadControlBuffers;->getMaxPlayerBufferMs()I

    move-result v5

    iget-object v6, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v6}, Lcom/kaltura/playkit/player/PlayerSettings;->getLoadControlBuffers()Lcom/kaltura/playkit/player/LoadControlBuffers;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kaltura/playkit/player/LoadControlBuffers;->getMinBufferAfterInteractionMs()I

    move-result v6

    iget-object v7, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v7}, Lcom/kaltura/playkit/player/PlayerSettings;->getLoadControlBuffers()Lcom/kaltura/playkit/player/LoadControlBuffers;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kaltura/playkit/player/LoadControlBuffers;->getMinBufferAfterReBufferMs()I

    move-result v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/DefaultLoadControl$Builder;->createDefaultLoadControl()Lcom/google/android/exoplayer2/DefaultLoadControl;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->setPlayerListeners()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-boolean v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->useTextureView:Z

    iget-boolean v3, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSurfaceSecured:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaltura/playkit/player/BaseExoplayerView;->setPlayer(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZZ)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private initializeTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    const v1, 0x39534b0

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->setMaxVideoBitrate(I)V

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    new-instance v0, Lcom/kaltura/playkit/player/TrackSelectionHelper;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastSelectedTrackIds:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->tracksInfoListener:Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->setTracksInfoListener(Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method private isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/BehindLiveWindowException;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isLiveMediaWithoutDvr()Z
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Live:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v1, v1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaEntryType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeChangePlayerRenderView()V
    .locals 3

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->useTextureView:Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSurfaceSecured:Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Using TextureView with secured surface is not allowed. Secured surface request will be ignored."

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->useTextureView:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSurfaceSecured:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView()Z

    move-result v1

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kaltura/playkit/player/BaseExoplayerView;->setVideoSurfaceProperties(ZZ)V

    return-void
.end method

.method private pausePlayerAfterEndedEvent()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Pause pausePlayerAfterEndedEvent"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method private preparePlayer(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V
    .locals 3
    .param p1    # Lcom/kaltura/playkit/player/PKMediaSourceConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->metadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->hasDrmParams()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->drmSessionManager:Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;

    iget-object v1, p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/drm/DeferredDrmSessionManager;->setMediaSource(Lcom/kaltura/playkit/PKMediaSource;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldGetTracksInfo:Z

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->applyPlayerSettings(Lcom/kaltura/playkit/player/PlayerSettings;)V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildExoMediaSource(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldResetPlayerPosition:Z

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->LOADING:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    return-void
.end method

.method private savePlayerPosition()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'savePlayerPosition()\' on null instance of the exoplayer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentError:Lcom/kaltura/playkit/PKError;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentWindowIndex()I

    move-result v0

    iput v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerWindow:I

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerWindow:I

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerPosition:J

    :cond_1
    return-void
.end method

.method private selectPreferredTracksLanguage()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v4, v3}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getPreferredTrackId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeTrack(Ljava/lang/String;)V

    sget-object v4, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred language selected for track type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method private sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

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
    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event sent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine$EventListener;->onEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventListener is null cannot send Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$Type;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setPlayerListeners()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Attempt to invoke \'changeTrack()\' on null instance of the TracksSelectionHelper"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->changeTrack(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerPosition:J

    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

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

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentError:Lcom/kaltura/playkit/PKError;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object v0
.end method

.method public getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getLastSelectedTrack(I)Lcom/kaltura/playkit/player/BaseTrack;

    move-result-object p1

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

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->metadataList:Ljava/util/List;

    return-object v0
.end method

.method public getPKTracks()Lcom/kaltura/playkit/player/PKTracks;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->tracks:Lcom/kaltura/playkit/player/PKTracks;

    return-object v0
.end method

.method public getPlaybackInfo()Lcom/kaltura/playkit/PlaybackInfo;
    .locals 12

    new-instance v11, Lcom/kaltura/playkit/PlaybackInfo;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getCurrentVideoBitrate()J

    move-result-wide v1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getCurrentAudioBitrate()J

    move-result-wide v3

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v5

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getCurrentVideoWidth()J

    move-result-wide v7

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->getCurrentVideoHeight()J

    move-result-wide v9

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/kaltura/playkit/PlaybackInfo;-><init>(JJJJJ)V

    return-object v11
.end method

.method public getPlaybackRate()F
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    return v0

    :cond_0
    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownPlaybackRate:F

    return v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public getView()Lcom/kaltura/playkit/player/PlayerView;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->exoPlayerView:Lcom/kaltura/playkit/player/BaseExoplayerView;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public isLive()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isCurrentWindowDynamic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentState:Lcom/kaltura/playkit/PlayerState;

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "load"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->crossProtocolRedirectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->crossProtocolRedirectEnabled:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->getLicenseRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/kaltura/playkit/PKRequestParams;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/kaltura/playkit/PKRequestParams;-><init>(Landroid/net/Uri;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/PKRequestParams$Adapter;->adapt(Lcom/kaltura/playkit/PKRequestParams;)Lcom/kaltura/playkit/PKRequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->httpDataSourceRequestParams:Lcom/kaltura/playkit/PKRequestParams;

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->useTextureView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->useTextureView:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->isSurfaceSecured()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSurfaceSecured:Z

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initializePlayer()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->maybeChangePlayerRenderView()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->preparePlayer(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V

    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 0

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingChanged. isLoading => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p1}, Lcom/kaltura/playkit/player/metadata/MetadataConverter;->convert(Lcom/google/android/exoplayer2/metadata/Metadata;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->metadataList:Ljava/util/List;

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->METADATA_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_RATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError error type => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isBehindLiveWindow(Lcom/google/android/exoplayer2/ExoPlaybackException;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onPlayerError BehindLiveWindowException receivec repreparing player"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->buildExoMediaSource(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->UNEXPECTED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->RENDERER_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_ERROR:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v2, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/kaltura/playkit/PKError;

    invoke-direct {v2, v1, v0, p1}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentError:Lcom/kaltura/playkit/PKError;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error-Event sent, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine$EventListener;->onEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventListener is null cannot send Error-Event type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged. ENDED. playWhenReady => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->pausePlayerAfterEndedEvent()V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged. READY. playWhenReady => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p2, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    iget-boolean p2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    sget-object p2, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :cond_0
    iget-object p2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->previousState:Lcom/kaltura/playkit/PlayerState;

    sget-object v0, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {p2, v0}, Lcom/kaltura/playkit/PlayerState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    goto :goto_0

    :pswitch_2
    sget-object p2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged. BUFFERING. playWhenReady => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    goto :goto_0

    :pswitch_3
    sget-object p2, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged. IDLE. playWhenReady => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->changeState(Lcom/kaltura/playkit/PlayerState;)V

    iget-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onPositionDiscontinuity"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "onTimelineChanged"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->LOADED_METADATA:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldResetPlayerPosition:Z

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onTracksChanged"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldGetTracksInfo:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->prepareTracks(Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldGetTracksInfo:Z

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->notifyAboutTrackChange(Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'pause()\' on null instance of the exoplayer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->currentEvent:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public play()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'play()\' on null instance of the exoplayer."

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isLiveMediaWithoutDvr()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->savePlayerPosition()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->release()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    return-void
.end method

.method public replay()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'replay()\' on null instance of the exoplayer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->REPLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public restore()V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initializePlayer()V

    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->setVolume(F)V

    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownPlaybackRate:F

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->setPlaybackRate(F)V

    :cond_0
    iget-wide v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isLiveMediaWithoutDvr()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerWindow:I

    iget-wide v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->playerPosition:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(IJ)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    :goto_1
    return-void
.end method

.method public seekTo(J)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Attempt to invoke \'seekTo()\' on null instance of the exoplayer"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendDistinctEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekToDefaultPosition()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public setEventListener(Lcom/kaltura/playkit/player/PlayerEngine$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->eventListener:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 2

    iput p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownPlaybackRate:F

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    sget v1, Lcom/kaltura/playkit/utils/Consts;->DEFAULT_PITCH_RATE:F

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(FF)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_0
    return-void
.end method

.method public setStateChangedListener(Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->stateChangedListener:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Attempt to invoke \'setVolume()\' on null instance of the exoplayer"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iput p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVolume()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    sget-object p1, Lcom/kaltura/playkit/PlayerEvent$Type;->VOLUME_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->sendEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    :cond_3
    return-void
.end method

.method public startFrom(J)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Attempt to invoke \'startFrom()\' on null instance of the exoplayer"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldRestorePlayerToPreviousState:Z

    if-eqz v0, :cond_1

    sget-object p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Restoring player from previous known state. So skip this block."

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->isSeeking:Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method public stop()V
    .locals 5

    sget-object v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->shouldResetPlayerPosition:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->preferredLanguageWasSelected:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownVolume:F

    iput v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastKnownPlaybackRate:F

    const-string v2, "none"

    const-string v3, "none"

    const-string v4, "none"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->lastSelectedTrackIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->trackSelectionHelper:Lcom/kaltura/playkit/player/TrackSelectionHelper;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/TrackSelectionHelper;->stop()V

    :cond_0
    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop(Z)V

    :cond_1
    return-void
.end method
