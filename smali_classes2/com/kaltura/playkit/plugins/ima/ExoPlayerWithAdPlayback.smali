.class public Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;
.super Landroid/widget/RelativeLayout;
.source "ExoPlayerWithAdPlayback.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

.field private adLoadTimeout:I

.field private contentPlayer:Lcom/kaltura/playkit/Player;

.field private eventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

.field private isAdFirstPlay:Z

.field private isPlayerReady:Z

.field private lastKnownAdPosition:J

.field private lastKnownAdURL:Ljava/lang/String;

.field private lastPlayerState:Lcom/kaltura/playkit/PlayerState;

.field private final mAdCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mAdUiContainer:Landroid/view/ViewGroup;

.field private mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private mContext:Landroid/content/Context;

.field private mIsAdDisplayed:Z

.field private mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExoPlayerWithAdPlayback"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContext:Landroid/content/Context;

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    const/16 p1, 0x1f40

    iput p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    const/16 p2, 0x1f40

    iput p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object p1
.end method

.method static synthetic access$200()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    return p0
.end method

.method static synthetic access$302(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Z
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdPlayerPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdFirstPlay:Z

    return p1
.end method

.method static synthetic access$702(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;J)J
    .locals 0

    iput-wide p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdPosition:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdURL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->initializePlayer(Ljava/lang/String;Z)V

    return-void
.end method

.method private buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object v2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->buildHttpDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private buildHttpDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AdPlayKit"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget v3, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    iget v4, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adLoadTimeout:I

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZ)V

    return-object v6
.end method

.method private buildMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private deviceRequiresDecoderRelease()Z
    .locals 2

    const-string v0, "mt6735"

    sget-object v1, Lcom/kaltura/playkit/player/MediaSupport;->DEVICE_CHIPSET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdPosition:J

    new-instance v1, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    const v2, 0x75bcd15

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setId(I)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->buildDataSourceFactory(Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance v0, Lcom/google/android/exoplayer2/util/EventLogger;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EventLogger;-><init>(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->eventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->initAdPlayer()V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$2;-><init>(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method private initAdPlayer()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->renderersFactory:Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->eventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :goto_0
    return-void
.end method

.method private initDrmSessionListener()Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$1;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$1;-><init>(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;)V

    return-object v0
.end method

.method private initializePlayer(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error, Ad playback url cannot be empty or null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->sendSourceError(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->initAdPlayer()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->buildMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->stop()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_2
    return-void
.end method

.method private isAdPlayerPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendSourceError(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;->onSourceError(Ljava/lang/Exception;)V

    :cond_0
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "onPlayerError calling callback.onError()"

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAdPlaybackEventListener(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    return-void
.end method

.method public getAdDuration()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public getAdPosition()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAdUiContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    return-object v0
.end method

.method public getIsAdDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    return v0
.end method

.method public getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoAdPlayer:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    return-object v0
.end method

.method public onLoadingChanged(Z)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onTracksChanged"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onPlaybackParametersChanged"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->sendSourceError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastPlayerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastPlayerState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object p2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged. ENDED. playWhenReady => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded()V

    goto :goto_0

    :pswitch_1
    sget-object p2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerStateChanged. READY. playWhenReady => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastPlayerState:Lcom/kaltura/playkit/PlayerState;

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    invoke-interface {p2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;->onBufferEnd()V

    iget-boolean p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdFirstPlay:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    invoke-interface {p2}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;->adFirstPlayStarted()V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdFirstPlay:Z

    :cond_0
    sget-object p2, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastPlayerState:Lcom/kaltura/playkit/PlayerState;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_3

    :pswitch_2
    sget-object p2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged. BUFFERING. playWhenReady => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastPlayerState:Lcom/kaltura/playkit/PlayerState;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    invoke-interface {p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;->onBufferStart()V

    goto :goto_4

    :pswitch_3
    sget-object p2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged. IDLE. playWhenReady => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastPlayerState:Lcom/kaltura/playkit/PlayerState;

    :cond_3
    :goto_4
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

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onPositionDiscontinuity"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onRepeatModeChanged"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onSeekProcessed"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onShuffleModeEnabledChanged"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "onTimelineChanged"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "onLoadingChanged"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    :cond_0
    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mAdUiContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->eventLogger:Lcom/google/android/exoplayer2/util/EventLogger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdFirstPlay:Z

    :cond_1
    return-void
.end method

.method public removeAdPlaybackEventListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->onAdPlayBackListener:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;

    return-void
.end method

.method public resumeContentAfterAdPlayback()V
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mIsAdDisplayed:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isAdFirstPlay:Z

    return-void
.end method

.method public setAdCuePoints(Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    return-void
.end method

.method public setContentProgressProvider(Lcom/kaltura/playkit/Player;)V
    .locals 1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->contentPlayer:Lcom/kaltura/playkit/Player;

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;

    invoke-direct {v0, p0, p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$3;-><init>(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;Lcom/kaltura/playkit/Player;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mContentProgressProvider:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method

.method public setIsAppInBackground(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getAdPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdPosition:J

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->deviceRequiresDecoderRelease()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->stop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->pause()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->deviceRequiresDecoderRelease()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdURL:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdURL:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->initializePlayer(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->lastKnownAdPosition:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->isPlayerReady:Z

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->mVideoPlayer:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    :cond_0
    return-void
.end method
