.class Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;
.super Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;
.source "YouboraAdManager.java"


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private adBitrate:D

.field private currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

.field private isBuffering:Z

.field private isFirstPlay:Z

.field private lastReportedAdDuration:Ljava/lang/Double;

.field private lastReportedAdPlayhead:Ljava/lang/Double;

.field private lastReportedAdResource:Ljava/lang/String;

.field private lastReportedAdTitle:Ljava/lang/String;

.field private mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

.field private messageBus:Lcom/kaltura/playkit/MessageBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "YouboraAdManager"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Lcom/npaw/youbora/plugins/PluginGeneric;Lcom/kaltura/playkit/MessageBus;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;-><init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isFirstPlay:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isBuffering:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->adBitrate:D

    new-instance v1, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;

    invoke-direct {v1, p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$1;-><init>(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)V

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5.3.10-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->getAdPlayerVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->adnalyzerVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    new-array p1, p1, [Ljava/lang/Enum;

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v2, p1, v0

    invoke-virtual {p2, v1, p1}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object p2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-static {}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->values()[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-virtual {p1, p2, v0}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method static synthetic access$000()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdResource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdResource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isFirstPlay:Z

    return p0
.end method

.method static synthetic access$202(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isFirstPlay:Z

    return p1
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/npaw/youbora/plugins/PluginGeneric;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/plugins/ads/AdInfo;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/plugins/ads/AdInfo;)Lcom/kaltura/playkit/plugins/ads/AdInfo;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->populateAdValues()V

    return-void
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$700(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdDuration:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$800(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;Lcom/kaltura/playkit/PKError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->handleAdError(Lcom/kaltura/playkit/PKError;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;)Lcom/kaltura/playkit/MessageBus;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    return-object p0
.end method

.method private handleAdError(Lcom/kaltura/playkit/PKError;)V
    .locals 2

    iget-object p1, p1, Lcom/kaltura/playkit/PKError;->errorType:Ljava/lang/Enum;

    check-cast p1, Lcom/kaltura/playkit/ads/PKAdErrorType;

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$2;->$SwitchMap$com$kaltura$playkit$ads$PKAdErrorType:[I

    invoke-virtual {p1}, Lcom/kaltura/playkit/ads/PKAdErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kaltura/playkit/ads/PKAdErrorType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->endedAdHandler()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;

    invoke-virtual {p1}, Lcom/kaltura/playkit/ads/PKAdErrorType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void

    :cond_0
    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "QUIET_LOG_ERROR. Avoid sending to Youbora."

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private onEvent(Lcom/kaltura/playkit/PlayerEvent$StateChanged;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    iget-object v1, p1, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->newState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$2;->$SwitchMap$com$kaltura$playkit$PlayerState:[I

    iget-object v1, p1, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->newState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isBuffering:Z

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->bufferingAdHandler()V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isBuffering:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isBuffering:Z

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->bufferedAdHandler()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->eventType()Ljava/lang/Enum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateAdValues()V
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdDuration:Ljava/lang/Double;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPlayHead()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdDuration:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastReportedAdPlayhead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdBitrate()Ljava/lang/Double;
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->adBitrate:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdDuration()Ljava/lang/Double;
    .locals 4

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "getAdPlayerVersion playkit/android-vootdev"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    const-string v0, "Kaltura-playkit/android-vootdev"

    return-object v0
.end method

.method public getAdPlayhead()Ljava/lang/Double;
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdPlayhead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    return-object v0
.end method

.method public getAdPosition()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown"

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdPositionType:[I

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdInfo;->getAdPositionType()Lcom/kaltura/playkit/plugins/ads/AdPositionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdPositionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "post"

    goto :goto_0

    :pswitch_1
    const-string v0, "mid"

    goto :goto_0

    :pswitch_2
    const-string v0, "pre"

    :goto_0
    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdResource()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdResource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdResource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdResource:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "getAdTitle "

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "No Info"

    :goto_0
    return-object v0
.end method

.method public onUpdateConfig()V
    .locals 2

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->resetAdValues()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->adBitrate:D

    invoke-super {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdResource:Ljava/lang/String;

    return-void
.end method

.method resetAdValues()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isFirstPlay:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->currentAdInfo:Lcom/kaltura/playkit/plugins/ads/AdInfo;

    invoke-super {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdDuration()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdDuration:Ljava/lang/Double;

    invoke-super {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdTitle:Ljava/lang/String;

    invoke-super {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->lastReportedAdPlayhead:Ljava/lang/Double;

    return-void
.end method

.method public setAdBitrate(Ljava/lang/Double;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->adBitrate:D

    return-void
.end method

.method public startMonitoring(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "startMonitoring"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->startMonitoring(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->isFirstPlay:Z

    return-void
.end method

.method public stopMonitoring()V
    .locals 6

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "stopMonitoring"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->stopMonitoring()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->endedHandler()V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Enum;

    sget-object v4, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-static {}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->values()[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    invoke-virtual {v0, v1, v3}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    new-array v2, v2, [Ljava/lang/Enum;

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method
