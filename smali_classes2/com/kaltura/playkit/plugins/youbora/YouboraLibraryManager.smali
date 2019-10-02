.class Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;
.super Lcom/npaw/youbora/plugins/PluginGeneric;
.source "YouboraLibraryManager.java"


# static fields
.field private static final KALTURA_ANDROID:Ljava/lang/String; = "Kaltura-Android"

.field private static final PLAYER_ERROR_STR:Ljava/lang/String; = "Player error occurred"

.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

.field private allowSendingYouboraBufferEvents:Z

.field private isBuffering:Z

.field private isFirstPlay:Z

.field private lastReportedBitrate:Ljava/lang/Double;

.field private lastReportedRendition:Ljava/lang/String;

.field private lastReportedResource:Ljava/lang/String;

.field private lastReportedThroughput:Ljava/lang/Double;

.field private mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

.field private mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

.field private messageBus:Lcom/kaltura/playkit/MessageBus;

.field private player:Lcom/kaltura/playkit/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "YouboraLibraryManager"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isBuffering:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    const-string p1, "unknown"

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedResource:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    new-instance p1, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;

    invoke-direct {p1, p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;-><init>(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Lcom/kaltura/playkit/MessageBus;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/kaltura/playkit/MessageBus;",
            "Lcom/kaltura/playkit/PKMediaConfig;",
            "Lcom/kaltura/playkit/Player;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isBuffering:Z

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    const-string p1, "unknown"

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedResource:Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    new-instance p1, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;

    invoke-direct {p1, p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$1;-><init>(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    iput-object p4, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->player:Lcom/kaltura/playkit/Player;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-static {}, Lcom/kaltura/playkit/PlayerEvent$Type;->values()[Lcom/kaltura/playkit/PlayerEvent$Type;

    move-result-object p3

    check-cast p3, [Ljava/lang/Enum;

    invoke-virtual {p2, p1, p3}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mEventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-static {}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->values()[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    move-result-object p3

    check-cast p3, [Ljava/lang/Enum;

    invoke-virtual {p2, p1, p3}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$002(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PKEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->sendReportEvent(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedThroughput:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/plugins/ads/AdEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->onAdEvent(Lcom/kaltura/playkit/plugins/ads/AdEvent;)V

    return-void
.end method

.method static synthetic access$202(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedRendition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Lcom/npaw/youbora/youboralib/managers/ViewManager;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    return-object p0
.end method

.method static synthetic access$400()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PlayerEvent$StateChanged;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->onEvent(Lcom/kaltura/playkit/PlayerEvent$StateChanged;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    return p0
.end method

.method static synthetic access$602(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    return p1
.end method

.method static synthetic access$700(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    return-object p0
.end method

.method static synthetic access$702(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/plugins/ads/AdCuePoints;)Lcom/kaltura/playkit/plugins/ads/AdCuePoints;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    return-object p1
.end method

.method static synthetic access$800(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Lcom/kaltura/playkit/PKEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->sendErrorHandler(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method static synthetic access$902(Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedResource:Ljava/lang/String;

    return-object p1
.end method

.method public static getExceptionMessageChain(Ljava/lang/Throwable;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private onAdEvent(Lcom/kaltura/playkit/plugins/ads/AdEvent;)V
    .locals 3

    iget-object v0, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v2}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    iget-object v1, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent;->type:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    invoke-virtual {p1}, Lcom/kaltura/playkit/plugins/ads/AdCuePoints;->hasPostRoll()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->endedHandler()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;

    iget-object p1, p1, Lcom/kaltura/playkit/plugins/ads/AdEvent$AdCuePointsUpdateEvent;->cuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->ignoredAdHandler()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->ignoringAdHandler()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    :cond_1
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

.method private onEvent(Lcom/kaltura/playkit/PlayerEvent$StateChanged;)V
    .locals 2

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerState:[I

    iget-object v1, p1, Lcom/kaltura/playkit/PlayerEvent$StateChanged;->newState:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isBuffering:Z

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->bufferingHandler()V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isBuffering:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isBuffering:Z

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->bufferedHandler()V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->sendReportEvent(Lcom/kaltura/playkit/PKEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendErrorHandler(Lcom/kaltura/playkit/PKEvent;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/kaltura/playkit/PlayerEvent$Error;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    iget-object v1, v1, Lcom/kaltura/playkit/PKError;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "Player error occurred"

    :goto_0
    iget-object v2, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    iget-object v3, v2, Lcom/kaltura/playkit/PKError;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->errorHandler(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, v2, Lcom/kaltura/playkit/PKError;->exception:Ljava/lang/Throwable;

    check-cast p1, Ljava/lang/Exception;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lcom/kaltura/playkit/PKError;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v2, v2, Lcom/kaltura/playkit/PKError;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->getExceptionMessageChain(Ljava/lang/Throwable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object p1, v4

    :goto_3
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    iget-object v2, v2, Lcom/kaltura/playkit/PKError;->errorType:Ljava/lang/Enum;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/kaltura/playkit/PlayerEvent$Error;->error:Lcom/kaltura/playkit/PKError;

    iget-object v0, v0, Lcom/kaltura/playkit/PKError;->errorType:Ljava/lang/Enum;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    const-string v0, ""

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->errorHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendReportEvent(Lcom/kaltura/playkit/PKEvent;)V
    .locals 2

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/kaltura/playkit/PKEvent;->eventType()Ljava/lang/Enum;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance v1, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;

    invoke-direct {v1, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraEvent$YouboraReport;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/MessageBus;->post(Lcom/kaltura/playkit/PKEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateRendition(DII)Ljava/lang/String;
    .locals 2

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_1

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getRendition()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p3, p4, p1, p2}, Lcom/npaw/youbora/youboralib/utils/Utils;->buildRenditionString(IID)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBitrate()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    return-object v0
.end method

.method public getIsLive()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getMediaType()Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    move-result-object v0

    sget-object v1, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Live:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/Double;
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    :goto_0
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastReportedMediaDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "Kaltura-playkit/android-vootdev"

    return-object v0
.end method

.method public getPlayhead()Ljava/lang/Double;
    .locals 5

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRendition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedRendition:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedResource:Ljava/lang/String;

    return-object v0
.end method

.method public getThroughput()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedThroughput:Ljava/lang/Double;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaEntry;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "unknown"

    return-object v0
.end method

.method protected init()V
    .locals 2

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->init()V

    const-string v0, "Kaltura-Android"

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->pluginName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5.3.10-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->getPlayerVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->pluginVersion:Ljava/lang/String;

    return-void
.end method

.method public onUpdateConfig()V
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->resetValues()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->adCuePoints:Lcom/kaltura/playkit/plugins/ads/AdCuePoints;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedResource:Ljava/lang/String;

    return-void
.end method

.method public pauseMonitoring()V
    .locals 1

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->pauseMonitoring()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    return-void
.end method

.method public resetValues()V
    .locals 1

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getBitrate()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedBitrate:Ljava/lang/Double;

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getRendition()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedRendition:Ljava/lang/String;

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getThroughput()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->lastReportedThroughput:Ljava/lang/Double;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    return-void
.end method

.method public startMonitoring(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "startMonitoring"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;->startMonitoring(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->isFirstPlay:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->allowSendingYouboraBufferEvents:Z

    return-void
.end method

.method public stopMonitoring()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "stopMonitoring"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->stopMonitoring()V

    return-void
.end method
