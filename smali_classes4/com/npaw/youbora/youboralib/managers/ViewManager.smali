.class public Lcom/npaw/youbora/youboralib/managers/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# static fields
.field private static monitoringIntervalMillis:J = 0x320L


# instance fields
.field private adCounterMid:I

.field private adCounterPost:I

.field private adCounterPre:I

.field private adCounterUnknown:I

.field private adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

.field private changedEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoAdJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoAdPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoAdTotal:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field private chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

.field public communication:Lcom/npaw/youbora/youboralib/com/Communication;

.field public enableAdBufferMonitor:Z

.field public enableBufferMonitor:Z

.field public enableSeekMonitor:Z

.field public infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

.field public isAdBuffering:Z

.field public isAdJoinSent:Z

.field public isAdPaused:Z

.field public isAdStartSent:Z

.field public isBuffering:Z

.field public isErrorSent:Z

.field public isJoinSent:Z

.field public isPaused:Z

.field public isSeeking:Z

.field public isShowingAds:Z

.field public isStartSent:Z

.field private lastAdPlayhead:D

.field private lastDuration:Ljava/lang/Number;

.field private lastPlayhead:D

.field private lastRendition:Ljava/lang/String;

.field private pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

.field private playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

.field private position:Ljava/lang/String;

.field public resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/youboralib/managers/InfoManager;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableAdBufferMonitor:Z

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdTotal:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-direct {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-direct {v0, p0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    new-instance v0, Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "service"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v2

    const-string v3, "httpSecure"

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/npaw/youbora/youboralib/com/Communication;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    new-instance v1, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->setExtraOperationsListener(Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;)V

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Timer;

    new-instance v1, Lcom/npaw/youbora/youboralib/managers/ViewManager$2;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager$2;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V

    invoke-direct {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Timer;-><init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Timer;

    new-instance v1, Lcom/npaw/youbora/youboralib/managers/ViewManager$3;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager$3;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V

    sget-wide v2, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    invoke-direct {v0, v1, v2, v3}, Lcom/npaw/youbora/youboralib/utils/Timer;-><init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;J)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    new-instance v0, Lcom/npaw/youbora/youboralib/utils/Timer;

    new-instance v1, Lcom/npaw/youbora/youboralib/managers/ViewManager$4;

    invoke-direct {v1, p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager$4;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V

    sget-wide v2, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    invoke-direct {v0, v1, v2, v3}, Lcom/npaw/youbora/youboralib/utils/Timer;-><init>(Lcom/npaw/youbora/youboralib/utils/Timer$TimerEventListener;J)V

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getDataParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->requestData(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p1, "ViewManager: InfoManager is null"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private convertBufferToSeek()V
    .locals 2

    const-string v0, "Converting buffer to seek"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStopTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->stop()J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    return-void
.end method

.method public static getMonitoringInterval()J
    .locals 2

    sget-wide v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    return-wide v0
.end method

.method private getNumber(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method private getNumber(Ljava/lang/String;Z)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1a648

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x1b2a3

    if-eq v0, v1, :cond_1

    const v1, 0x3498a0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "post"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "pre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "mid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_7

    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterUnknown:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterUnknown:I

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_4

    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPost:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPost:I

    :cond_4
    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPost:I

    goto :goto_3

    :pswitch_1
    if-eqz p2, :cond_5

    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterMid:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterMid:I

    :cond_5
    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterMid:I

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_6

    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPre:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPre:I

    :cond_6
    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPre:I

    goto :goto_3

    :cond_7
    :goto_2
    iget p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterUnknown:I

    :goto_3
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAllowed(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "disabledRequests"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "enableAnalytics"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHalted()Z
    .locals 2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isErrorSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "haltOnError"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetAdNumbers()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPre:I

    iput v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterMid:I

    iput v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterPost:I

    iput v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adCounterUnknown:I

    return-void
.end method

.method private sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/npaw/youbora/youboralib/com/Communication;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    :cond_0
    return-void
.end method

.method public static setMonitoringInterval(J)V
    .locals 0

    sput-wide p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    return-void
.end method


# virtual methods
.method protected checkAdPlayhead()V
    .locals 8

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastAdPlayhead:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-double v4, v4

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    long-to-double v2, v2

    iget-boolean v4, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableAdBufferMonitor:Z

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastAdPlayhead:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    if-eqz v4, :cond_2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    long-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferStart()V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v3}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    long-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double v4, v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferEnd()V

    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastAdPlayhead:D

    :cond_3
    return-void
.end method

.method protected checkPlayhead()V
    .locals 10

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v2, v2, v4

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-double v4, v4

    sget-wide v8, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    mul-long v8, v8, v6

    long-to-double v6, v8

    cmpg-double v4, v2, v4

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v5}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    cmpl-double v3, v3, v8

    if-lez v3, :cond_5

    iget-boolean v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferStart()V

    goto :goto_0

    :cond_1
    cmpl-double v2, v2, v6

    if-lez v2, :cond_3

    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    cmpl-double v2, v2, v8

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->convertBufferToSeek()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekStart()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v5}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    long-to-double v2, v2

    sget-wide v4, Lcom/npaw/youbora/youboralib/managers/ViewManager;->monitoringIntervalMillis:J

    long-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double v4, v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd()V

    :cond_5
    :goto_0
    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    :cond_6
    return-void
.end method

.method public getResourceParser()Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    return-object v0
.end method

.method public sendAdBufferEnd()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdBufferEnd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdBufferEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/adBufferUnderrun"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /adBufferUnderrun "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public sendAdBufferStart()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    const-string v0, "Method: NQS /adBufferStart"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendAdJoin()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdJoin(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableAdBufferMonitor:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastAdPlayhead:D

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdJoinParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad joinTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms, forcing to 1ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    const-string v0, "duration"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "/adJoinTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /adJoinTime "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public sendAdPause()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdPause(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPauseParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/adPause"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    const-string p1, "Request: NQS /adPause"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public sendAdResume()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdResume(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdResumeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adPauseDuration"

    const-string v1, "adPauseDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "adPauseDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/adResume"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    const-string p1, "Request: NQS /adResume"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public sendAdStart()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdStart(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStop()V

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdTotal:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v1, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdStartParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "number"

    const-string v2, "number"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "number"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "position"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "durationJointime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    :cond_2
    const-string v0, "position"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    const-string v0, "/adStart"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /adStart "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "position"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "number"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendAdStop()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdStop(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendAdStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdTotal:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v2

    const/4 v4, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getNow()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdJoinParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "totalDuration"

    const-string v1, "totalDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "totalDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdTotal:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->position:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "number"

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "number"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getNumber(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/adStop"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /adStop "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "totalDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public sendBufferEnd()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendBufferEnd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendBufferEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getBufferEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "time"

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/bufferUnderrun"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /bufferUnderrun "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public sendBufferStart()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    const-string v0, "Method: /bufferStart"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendError()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendError(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendError(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendError(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendError(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isErrorSent:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "parseCDNNodeHost"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "parseHLS"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->start()V

    :cond_2
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "haltOnError"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getErrorParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "parseCDNNodeHost"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "nodeHost"

    const-string v1, "nodeHost"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "nodeHost"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeType"

    const-string v1, "nodeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "nodeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeType()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "/error"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "msg"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public sendIgnoreAdEnd()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->stop()J

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v2

    const/4 v4, 0x0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getNow()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method: /genericAdEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendIgnoreAdStart()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoGenericAd:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd()V

    const-string v0, "Method: /sendIgnoreAdStart"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendJoin()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendJoin(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendJoin(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    if-eqz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getJoinParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "time"

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastDuration:Ljava/lang/Number;

    if-eqz v0, :cond_3

    const-string v0, "mediaDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastDuration:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-nez v0, :cond_3

    const-string v0, "mediaDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "joinTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms, forcing to 1ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    const-string v0, "time"

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "/joinTime"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /joinTime "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public sendPause()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendPause(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendPause(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPauseParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "/pause"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    const-string p1, "Request: NQS /pause"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendPing(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPing(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendPing(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPingParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPingParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getRendition()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastRendition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastRendition:Ljava/lang/String;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    const-string v2, "rendition"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "pingTime"

    const-string v1, "pingTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pingTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/com/Communication;->getPingTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    if-eqz v0, :cond_4

    const-string v0, "adBufferDuration"

    const-string v2, "adBufferDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "adBufferDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    if-eqz v0, :cond_a

    const-string v0, "adPauseDuration"

    const-string v2, "adPauseDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "adPauseDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v0, :cond_8

    const-string v0, "seekDuration"

    const-string v2, "seekDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "seekDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_3
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_a

    const-string v0, "bufferDuration"

    const-string v2, "bufferDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "bufferDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_4
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-eqz v0, :cond_c

    const-string v0, "pauseDuration"

    const-string v2, "pauseDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "pauseDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v2, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_6
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "entityType"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "entityValue"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_e

    const-string v0, "entityValue"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "entityValue"

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "/ping"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method

.method public sendResume()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendResume(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendResume(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoLastResume:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getResumeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "pauseDuration"

    const-string v1, "pauseDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pauseDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoPause:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/resume"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    const-string p1, "Request: NQS /resume"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public sendSeekEnd()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendSeekEnd(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendSeekEnd(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getSeekEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/seek"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /seek "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public sendSeekStart()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    const-string v0, "Method: /seekStart"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendStart()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendStart(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendStart(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isHalted()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getStartParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "pingTime"

    const-string v1, "pingTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pingTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/com/Communication;->getPingTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "parseCDNNodeHost"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "parseHLS"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "nodeHost"

    const-string v3, "nodeHost"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "nodeHost"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeHost()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "nodeType"

    const-string v3, "nodeType"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "nodeType"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeType()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->start()V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->communication:Lcom/npaw/youbora/youboralib/com/Communication;

    const-string v1, "live"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Communication;->nextView(Z)Ljava/lang/String;

    const-string v0, "/start"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Request: NQS /start "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "resource"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    const-string p2, "duration"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastDuration:Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public sendStop()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendStop(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    return-void
.end method

.method public sendStop(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    iput-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isErrorSent:Z

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->clear()V

    invoke-direct {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resetAdNumbers()V

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->stopTimers()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getStopParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "diffTime"

    const-string v1, "diffTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "diffTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Timer;->getChrono()Lcom/npaw/youbora/youboralib/utils/Chrono;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getDeltaTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/stop"

    invoke-direct {p0, v0, p1, p2}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V

    const-string p1, "Request: NQS /stop"

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setChangedEntity(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->changedEntities:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startTimers()V
    .locals 3

    const-string v0, "startTimers"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_2

    const-string v0, "startTimers - start ping"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "startTimers - start playheadMonitorTimer"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iput-wide v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastPlayhead:D

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    :cond_1
    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableAdBufferMonitor:Z

    if-eqz v0, :cond_2

    const-string v0, "startTimers - start adPlayheadMonitorTimer"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iput-wide v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->lastAdPlayhead:D

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->start()V

    :cond_2
    return-void
.end method

.method public stopTimers()V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->pingTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->playheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->adPlayheadMonitorTimer:Lcom/npaw/youbora/youboralib/utils/Timer;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Timer;->stop()V

    return-void
.end method
