.class public Lcom/kaltura/playkit/plugins/ima/IMAPlugin;
.super Lcom/kaltura/playkit/PKPlugin;
.source "IMAPlugin.java"

# interfaces
.implements Lcom/kaltura/playkit/plugins/ads/AdsProvider;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;


# static fields
.field public static final factory:Lcom/kaltura/playkit/PKPlugin$Factory;

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

.field private adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private adEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;",
            ">;"
        }
    .end annotation
.end field

.field private adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

.field private adManagerInitDuringBackground:Z

.field private adManagerTimer:Landroid/os/CountDownTimer;

.field private adPlaybackCancelled:Z

.field private adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

.field private adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

.field private adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private appInBackgroundDuringAdLoad:Z

.field private appIsInBackground:Z

.field private context:Landroid/content/Context;

.field private imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private isAdDisplayed:Z

.field private isAdError:Z

.field private isAdIsPaused:Z

.field private isAdRequested:Z

.field private isAllAdsCompleted:Z

.field private isAutoPlay:Z

.field private isContentEndedBeforeMidroll:Z

.field private isContentPrepared:Z

.field private isInitWaiting:Z

.field private lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field private lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

.field private mCompanionViewGroup:Landroid/view/ViewGroup;

.field private mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

.field private messageBus:Lcom/kaltura/playkit/MessageBus;

.field private pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

.field private player:Lcom/kaltura/playkit/Player;

.field private playerLastPositionForBG:J

.field private renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

.field private sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IMAPlugin"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/kaltura/playkit/PKPlugin;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->playerLastPositionForBG:J

    return-void
.end method

.method static synthetic access$000()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/PKMediaConfig;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/Player;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/MessageBus;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendCuePointsUpdateEvent()V

    return-void
.end method

.method static synthetic access$1900(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->cancelAdManagerTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getAdCuePoints()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isInitWaiting:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isInitWaiting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendCuePointsUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentPrepared:Z

    return p0
.end method

.method static synthetic access$402(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/PlayerEvent$Type;)Lcom/kaltura/playkit/PlayerEvent$Type;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Lcom/kaltura/playkit/plugins/ads/AdInfo;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    return p0
.end method

.method static synthetic access$802(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentEndedBeforeMidroll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    return-void
.end method

.method private buildAdsEventMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;",
            "Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CLICKED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CUEPOINTS_CHANGED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_PAUSE_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->FIRST_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->MIDPOINT:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->THIRD_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PAUSED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->RESUMED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->SKIPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_PROGRESS:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_ENDED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_ENDED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_BREAK_READY:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_READY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ICON_TAPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ICON_TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    return-object v0
.end method

.method private cancelAdManagerTimer()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "cancelAdManagerTimer"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private clearAdLoadingInBackground()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appInBackgroundDuringAdLoad:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerInitDuringBackground:Z

    return-void
.end method

.method private clearAdsLoader()V
    .locals 2

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->cancelAdManagerTimer()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    :cond_0
    return-void
.end method

.method private createAdInfo(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/kaltura/playkit/plugins/ads/AdInfo;
    .locals 24

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCurrentPosition()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v10

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdSystem()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getHeight()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getWidth()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v17

    iget-object v1, v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v18, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v1

    goto :goto_1

    :cond_1
    move/from16 v19, v18

    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->isBumper()Z

    move-result v20

    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTimeOffset()D

    move-result-wide v21

    mul-double v5, v5, v21

    double-to-long v5, v5

    new-instance v21, Lcom/kaltura/playkit/plugins/ads/AdInfo;

    const-wide/16 v22, 0x0

    cmp-long v1, v5, v22

    if-gez v1, :cond_2

    const-wide/16 v5, -0x1

    :cond_2
    move-wide/from16 v22, v5

    move-object/from16 v1, v21

    move-wide v5, v7

    move-object v7, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move v12, v14

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v19

    move/from16 v17, v18

    move/from16 v18, v20

    move-wide/from16 v19, v22

    invoke-direct/range {v1 .. v20}, Lcom/kaltura/playkit/plugins/ads/AdInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->v(Ljava/lang/String;)V

    return-object v21
.end method

.method private destroyIMA()V
    .locals 2

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->resetIMA()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    :cond_0
    return-void
.end method

.method private displayAd()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "displayAd"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerView;->hideVideoSurface()V

    :cond_1
    return-void
.end method

.method private displayContent()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "displayContent"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerView;->showVideoSurface()V

    :cond_1
    return-void
.end method

.method private getAdCuePoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getAdsLoadedListener()Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    return-object v0

    :cond_0
    new-instance v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$6;-><init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoadedListener:Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    return-object v0
.end method

.method private getCountDownTimer()Landroid/os/CountDownTimer;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v6, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    const-wide/16 v4, 0xfa

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$3;-><init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;JJ)V

    return-object v6
.end method

.method private getRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 4

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setPlayAdsAfterTime(D)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getVideoMimeTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getVideoMimeTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getVideoMimeTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/kaltura/playkit/PKMediaFormat;->mp4:Lcom/kaltura/playkit/PKMediaFormat;

    iget-object v1, v1, Lcom/kaltura/playkit/PKMediaFormat;->mimeType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdAttribution()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdCountDown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setUiElements(Ljava/util/Set;)V

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getVideoBitrate()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getVideoBitrate()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setBitrateKbps(I)V

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->renderingSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    return-object v0
.end method

.method private imaSettingSetup()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getPlayerType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getPlayerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerVersion(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getMaxRedirects()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getMaxRedirects()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setMaxRedirects(I)V

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isDebugMode()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setDebugMode(Z)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->isOMIDExperimentalEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setEnableOmidExperimentally(Z)V

    return-void
.end method

.method private imaSetup()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "imaSetup start"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSettingSetup()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getAdsLoadedListener()Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    :cond_1
    return-void
.end method

.method private isAdShouldAutoPlayOnResume()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object v0

    instance-of v0, v0, Lcom/kaltura/playkit/player/PlayerSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->isAdAutoPlayOnResume()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseConfig(Ljava/lang/Object;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;
    .locals 2

    instance-of v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    check-cast p0, Lcom/google/gson/JsonObject;

    const-class v1, Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private preparePlayer(Z)V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA prepare"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA prepare player"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentPrepared:Z

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    invoke-interface {v1}, Lcom/kaltura/playkit/ads/PKAdProviderListener;->onAdLoadingFinished()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;

    invoke-direct {v1, p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$4;-><init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    new-array v0, v0, [Ljava/lang/Enum;

    const/4 v2, 0x0

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v3, v0, v2

    invoke-virtual {p1, v1, v0}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_0
    return-void
.end method

.method private requestAdsFromIMA(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AdTag is empty avoiding ad request"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->resetIMA()V

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Do requestAdsFromIMA"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getAdUiContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v1

    int-to-long v1, v1

    mul-long v1, v1, v3

    long-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setVastLoadTimeout(F)V

    :cond_1
    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;

    invoke-direct {v2, p1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdRequestedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCountDownTimer()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerTimer:Landroid/os/CountDownTimer;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private resetFlagsOnError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->cancelAdManagerTimer()V

    return-void
.end method

.method private sendCuePointsUpdate()V
    .locals 5

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCuePointsUpdate cuePoints = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;

    new-instance v3, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    invoke-direct {v3, v0}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)V

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    :cond_1
    return-void
.end method

.method private sendCuePointsUpdateEvent()V
    .locals 3

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getAdCuePoints()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->setAdCuePoints(Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    invoke-direct {v1, v2}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method private sendError(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;

    new-instance v1, Lcom/kaltura/playkit/PKError;

    invoke-direct {v1, p1, p2, p3}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Error;-><init>(Lcom/kaltura/playkit/PKError;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method


# virtual methods
.method public adFirstPlayStarted()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AD adFirstPlayStarted"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_FIRST_PLAY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v1, v2}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method public contentCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    :cond_0
    return-void
.end method

.method public destroyAdsManager()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "IMA Start destroyAdsManager"

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->stop()V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->contentCompleted()V

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    return-void
.end method

.method public getAdInfo()Lcom/kaltura/playkit/ads/PKAdInfo;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v3, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;

    invoke-direct {v3, v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPlayHeadEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method protected getPlayerDecorator()Lcom/kaltura/playkit/PlayerDecorator;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/ads/AdEnabledPlayerController;-><init>(Lcom/kaltura/playkit/plugins/ads/AdsProvider;)V

    return-object v0
.end method

.method public isAdDisplayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    return v0
.end method

.method public isAdError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    return v0
.end method

.method public isAdPaused()Z
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    return v0
.end method

.method public isAdRequested()Z
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    return v0
.end method

.method public isAllAdsCompleted()Z
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllAdsCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    return v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event: onAdError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->resetFlagsOnError()V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "Unknown Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$7;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdError$AdErrorCode:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_1
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->INVALID_ARGUMENTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->ADS_REQUEST_NETWORK_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_3
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_ASSET_NOT_FOUND:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->FAILED_TO_REQUEST_ADS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_5
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_EMPTY_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_6
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->COMPANION_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_9
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_LOADING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_a
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->OVERLAY_AD_PLAYING_FAILED:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_b
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LINEAR_ASSET_MISMATCH:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_c
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MEDIA_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_d
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VIDEO_PLAY_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_e
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_TOO_MANY_REDIRECTS:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_f
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_LOAD_TIMEOUT:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_10
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->UNKNOWN_AD_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_11
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VAST_MALFORMED_RESPONSE:Lcom/kaltura/playkit/ads/PKAdErrorType;

    goto :goto_1

    :pswitch_12
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->INTERNAL_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendError(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAutoPlay:Z

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "WARNING, adsManager == null"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    if-nez v0, :cond_1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "ERROR, adEventsMap == null"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdEvent EventName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$7;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    invoke-direct {p0, v3}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adPodInfo.getAdPosition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adPodInfo.getTotalAds() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v1

    if-le v1, v4, :cond_3

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v1

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "LOG Error but continue to next ad in pod"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->discardAdBreak()V

    :cond_4
    const-string v0, "Non-fatal Error"

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "errorMessage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_5
    sget-object p1, Lcom/kaltura/playkit/ads/PKAdErrorType;->QUIET_LOG_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendError(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendCuePointsUpdate()V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_ENDED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_PROGRESS:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_READY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ICON_TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_8
    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CLICKED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_9
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCurrentPosition()J

    move-result-wide v4

    mul-long v4, v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->setAdPlayHead(J)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdSkippedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdSkippedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    iput-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    goto/16 :goto_2

    :pswitch_a
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->THIRD_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->MIDPOINT:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_c
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->FIRST_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_d
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD COMPLETED"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_e
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD RESUMED"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCurrentPosition()J

    move-result-wide v3

    mul-long v3, v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->setAdPlayHead(J)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdResumedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_f
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD PAUSED"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getCurrentPosition()J

    move-result-wide v3

    mul-long v3, v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->setAdPlayHead(J)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPausedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdPausedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto/16 :goto_2

    :pswitch_10
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AD STARTED"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iput-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdIsPaused:Z

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->createAdInfo(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdStartedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD STARTED and pause"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pause()V

    return-void

    :cond_6
    invoke-direct {p0, v3}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    if-nez p1, :cond_13

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$5;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$5;-><init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :pswitch_11
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD_ALL_ADS_COMPLETED"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_13

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD_ALL_ADS_COMPLETED onDestroy"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->destroyIMA()V

    goto/16 :goto_2

    :pswitch_12
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD REQUEST AD_CONTENT_RESUME_REQUESTED"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentEndedBeforeMidroll:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_7

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "AD REQUEST AD_CONTENT_RESUME_REQUESTED - contentCompleted"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->contentCompleted()V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    iput-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->resumeContentAfterAdPlayback()V

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentPrepared:Z

    if-nez p1, :cond_a

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Content not prepared.. Preparing and calling play."

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    if-eqz p1, :cond_d

    :cond_8
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "preparePlayer and play"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-nez p1, :cond_9

    invoke-direct {p0, v3}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->preparePlayer(Z)V

    :cond_9
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->play()V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v4

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content prepared.. lastPlaybackPlayerState = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", time = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq p1, v2, :cond_d

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-ltz p1, :cond_b

    cmp-long p1, v4, v0

    if-gtz p1, :cond_d

    :cond_b
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPositionType()Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->POST_ROLL:Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    if-eq p1, v0, :cond_d

    :cond_c
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Content prepared.. Play called."

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->play()V

    :cond_d
    :goto_0
    iput-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    goto/16 :goto_2

    :pswitch_13
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTENT_PAUSE_REQUESTED appIsInBackground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->pause()V

    :cond_e
    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-eqz p1, :cond_f

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appInBackgroundDuringAdLoad:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pause()V

    goto :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayAd()V

    :cond_10
    :goto_1
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_PAUSE_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    goto :goto_2

    :pswitch_14
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->createAdInfo(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/kaltura/playkit/plugins/ads/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-eqz p1, :cond_11

    iput-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appInBackgroundDuringAdLoad:Z

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_13

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "LOADED call adsManager.pause()"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pause()V

    goto :goto_2

    :cond_11
    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    if-eqz p1, :cond_12

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "discarding ad break"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->discardAdBreak()V

    goto :goto_2

    :cond_12
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdLoadedEvent;-><init>(Lcom/kaltura/playkit/plugins/ads/AdInfo;)V

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    sget-object p1, Lcom/kaltura/playkit/ads/AdTagType;->VMAP:Lcom/kaltura/playkit/ads/AdTagType;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdTagType()Lcom/kaltura/playkit/ads/AdTagType;

    move-result-object v0

    if-eq p1, v0, :cond_13

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    :cond_13
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onApplicationPaused()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationPaused"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->playerLastPositionForBG:J

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->setIsAppInBackground(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->cancelAdManagerTimer()V

    :cond_2
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pause()V

    return-void
.end method

.method protected onApplicationResumed()V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationResumed isAdDisplayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lastPlaybackPlayerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,lastAdEventReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->playerLastPositionForBG:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->playerLastPositionForBG:J

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->setIsAppInBackground(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayAd()V

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationResumed ad state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appInBackgroundDuringAdLoad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationResumed - appInBackgroundDuringAdLoad so start adManager"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->clearAdLoadingInBackground()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdShouldAutoPlayOnResume()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationResumed resume ad playback"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->clearAdLoadingInBackground()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd()V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne v0, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationResumed lastPlaybackPlayerState == PlayerEvent.Type.PAUSE pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v2}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdShouldAutoPlayOnResume()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->play()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationResumed Default..... lastAdEventReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationResumed Default..... adsManager.resume()"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->clearAdLoadingInBackground()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationResumed Default..... request Ad"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->onUpdateMedia(Lcom/kaltura/playkit/PKMediaConfig;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->start()V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Error: mediaConfig == null during on resume"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "onApplicationResumed lastPlaybackPlayerState == PlayerEvent.Type.PLAYING "

    invoke-virtual {v0, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->displayContent()V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdShouldAutoPlayOnResume()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->play()V

    :cond_8
    :goto_1
    return-void
.end method

.method public onBufferEnd()V
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_END:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_END:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getAdPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    sget-object v2, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AD onBufferEnd adPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " appIsInBackground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v3, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferEnd;

    invoke-direct {v3, v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferEnd;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AD onBufferEnd pausing adManager"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pause()V

    :cond_2
    return-void
.end method

.method public onBufferStart()V
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getAdPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    sget-object v2, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AD onBufferStart adPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v3, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferStart;

    invoke-direct {v3, v0, v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdBufferStart;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA Start onDestroy"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->destroyIMA()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->removeAdPlaybackEventListener()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->releasePlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    :cond_0
    return-void
.end method

.method protected onLoad(Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onLoad"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    if-nez p1, :cond_0

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Error, player instance is null."

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->buildAdsEventMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adEventsMap:Ljava/util/Map;

    invoke-static {p2}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->parseConfig(Ljava/lang/Object;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    if-nez p2, :cond_1

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Error, adConfig instance is null."

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {p2, p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->addAdPlaybackEventListener(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;)V

    invoke-interface {p1}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object p2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->getExoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/kaltura/playkit/player/PlayerView;->addView(Landroid/view/View;)V

    iput-object p4, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance p3, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;

    invoke-direct {p3, p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin$2;-><init>(Lcom/kaltura/playkit/plugins/ima/IMAPlugin;Lcom/kaltura/playkit/Player;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Enum;

    const/4 p4, 0x0

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v0, p1, p4

    const/4 p4, 0x1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v0, p1, p4

    invoke-virtual {p2, p3, p1}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method public onSourceError(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSourceError , message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->onBufferEnd()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    const-string v0, "Unknown Error"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    sget-object v1, Lcom/kaltura/playkit/ads/PKAdErrorType;->VIDEO_PLAY_ERROR:Lcom/kaltura/playkit/ads/PKAdErrorType;

    invoke-direct {p0, v1, v0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->sendError(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onUpdateConfig(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Start onUpdateConfig"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->parseConfig(Ljava/lang/Object;)Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    return-void
.end method

.method protected onUpdateMedia(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Start onUpdateMedia"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getStartPosition()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaConfig start pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    :cond_2
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->contentCompleted()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentPrepared:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAutoPlay:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isContentEndedBeforeMidroll:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    if-nez p1, :cond_3

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onUpdateMedia videoPlayerWithAdPlayback = null recreating it"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance p1, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdLoadTimeOut()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {p1, p0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->addAdPlaybackEventListener(Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback$OnAdPlayBackListener;)V

    :cond_3
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->setContentProgressProvider(Lcom/kaltura/playkit/Player;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->clearAdsLoader()V

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->imaSetup()V

    sget-object p1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adtag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdTagURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adConfig:Lcom/kaltura/playkit/plugins/ima/IMAConfig;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ima/IMAConfig;->getAdTagURL()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->requestAdsFromIMA(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AD Event pause mIsAdDisplayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAllAdsCompleted:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "AD Manager pause"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->pause()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Content player pause"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->pause()V

    :cond_2
    return-void
.end method

.method public removeAdProviderListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    return-void
.end method

.method protected resetIMA()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Start resetIMA"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdError:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastPlaybackPlayerState:Lcom/kaltura/playkit/PlayerEvent$Type;

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->cancelAdManagerTimer()V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adTagCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adPlaybackCancelled:Z

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AD Event resume mIsAdDisplayed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdDisplayed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->lastAdEventReceived:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PAUSED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->videoPlayerWithAdPlayback:Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ima/ExoPlayerWithAdPlayback;->play()V

    :cond_1
    return-void
.end method

.method public setAdProviderListener(Lcom/kaltura/playkit/ads/AdEnabledPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->pkAdProviderListener:Lcom/kaltura/playkit/ads/PKAdProviderListener;

    return-void
.end method

.method public skipAd()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->skip()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA start was called"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAutoPlay:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isAdRequested:Z

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "IMA start adsManager != null"

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->appIsInBackground:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start: Ad Manager Init appIsInBackground : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerInitDuringBackground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adManagerInitDuringBackground:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "IMA adsManager.init called"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->getRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "IMA start isInitWaiting = true"

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/ima/IMAPlugin;->isInitWaiting:Z

    :goto_0
    return-void
.end method
