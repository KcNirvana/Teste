.class public Lcom/kaltura/playkit/player/PlayerController;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcom/kaltura/playkit/Player;


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private context:Landroid/content/Context;

.field private currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;

.field private eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

.field private eventTrigger:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

.field private isNewEntry:Z

.field private isPlayerStopped:Z

.field private mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

.field private player:Lcom/kaltura/playkit/player/PlayerEngine;

.field private playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

.field private playerSessionId:Ljava/util/UUID;

.field private playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

.field private rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

.field private sessionId:Ljava/lang/String;

.field private sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

.field private stateChangedTrigger:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

.field private targetSeekPosition:J

.field private final updateProgressAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PlayerController"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-direct {v0}, Lcom/kaltura/playkit/player/PlayerSettings;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->initProgressAction()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->updateProgressAction:Ljava/lang/Runnable;

    sget-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSessionId:Ljava/util/UUID;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerController;->isNewEntry:Z

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->initEventListener()Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->eventTrigger:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->initStateChangeListener()Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->stateChangedTrigger:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->initializeRootPlayerView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/player/PlayerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/PlayerController;->setVideoSurfaceVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/player/PlayerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/PlayerController;->setVideoSubtitlesVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PlayerEngine;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/player/PKMediaSourceConfig;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kaltura/playkit/player/PlayerController;)J
    .locals 2

    iget-wide v0, p0, Lcom/kaltura/playkit/player/PlayerController;->targetSeekPosition:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/kaltura/playkit/player/PlayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->updateProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kaltura/playkit/player/PlayerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->cancelUpdateProgress()V

    return-void
.end method

.method static synthetic access$500(Lcom/kaltura/playkit/player/PlayerController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kaltura/playkit/player/PlayerController;->isNewEntry:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kaltura/playkit/player/PlayerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerController;->isNewEntry:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKMediaConfig;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kaltura/playkit/player/PlayerController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->isLiveMediaWithDvr()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/kaltura/playkit/player/PlayerController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kaltura/playkit/player/PlayerController;->startPlaybackFrom(J)V

    return-void
.end method

.method static synthetic access$902(Lcom/kaltura/playkit/player/PlayerController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kaltura/playkit/player/PlayerController;->isPlayerStopped:Z

    return p1
.end method

.method private addPlayerView()V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kaltura/playkit/player/PlayerView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private cancelUpdateProgress()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/PlayerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private generateSessionId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSessionId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initEventListener()Lcom/kaltura/playkit/player/PlayerEngine$EventListener;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/PlayerController$3;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/PlayerController$3;-><init>(Lcom/kaltura/playkit/player/PlayerController;)V

    return-object v0
.end method

.method private initProgressAction()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/PlayerController$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/PlayerController$2;-><init>(Lcom/kaltura/playkit/player/PlayerController;)V

    return-object v0
.end method

.method private initSourceConfig(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaSource;)V
    .locals 3

    instance-of v0, p1, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;

    new-instance v0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object v2, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;->getVrSettings()Lcom/kaltura/playkit/player/vr/VRSettings;

    move-result-object p1

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;-><init>(Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/PKMediaSource;Lcom/kaltura/playkit/player/PlayerSettings;Lcom/kaltura/playkit/player/vr/VRSettings;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-direct {p1, v0, p2, v1}, Lcom/kaltura/playkit/player/PKMediaSourceConfig;-><init>(Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/PKMediaSource;Lcom/kaltura/playkit/player/PlayerSettings;)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    :goto_0
    return-void
.end method

.method private initStateChangeListener()Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;
    .locals 1

    new-instance v0, Lcom/kaltura/playkit/player/PlayerController$4;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/player/PlayerController$4;-><init>(Lcom/kaltura/playkit/player/PlayerController;)V

    return-object v0
.end method

.method private initializeRootPlayerView()V
    .locals 2

    new-instance v0, Lcom/kaltura/playkit/player/PlayerController$1;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/kaltura/playkit/player/PlayerController$1;-><init>(Lcom/kaltura/playkit/player/PlayerController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    invoke-virtual {v1, v0}, Lcom/kaltura/playkit/player/PlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isLiveMediaWithDvr()Z
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->DvrLive:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v1, v1, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaEntryType:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removePlayerView()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/PlayerController;->togglePlayerListeners(Z)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/PlayerView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    return-void
.end method

.method private sendErrorMessage(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    invoke-virtual {v0, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Error;

    new-instance v1, Lcom/kaltura/playkit/PKError;

    invoke-direct {v1, p1, p2, p3}, Lcom/kaltura/playkit/PKError;-><init>(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/PlayerEvent$Error;-><init>(Lcom/kaltura/playkit/PKError;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    return-void
.end method

.method private setVideoSubtitlesVisibility(Z)V
    .locals 3

    const-string v0, "showVideoSubtitles"

    if-nez p1, :cond_0

    const-string v0, "hideVideoSubtitles"

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v1, :cond_1

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " player is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v1}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerView;->showVideoSubtitles()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerView;->hideVideoSubtitles()V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playerView is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setVideoSurfaceVisibility(Z)V
    .locals 3

    const-string v0, "showVideoSurface"

    if-nez p1, :cond_0

    const-string v0, "hideVideoSurface"

    :cond_0
    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v1, :cond_1

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " player is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v1}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerView;->showVideoSurface()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/kaltura/playkit/player/PlayerView;->hideVideoSurface()V

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playerView is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shouldSwitchBetweenPlayers(Lcom/kaltura/playkit/PKMediaSource;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    instance-of v0, v0, Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    instance-of p1, p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startPlaybackFrom(J)V
    .locals 3

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Attempt to invoke \'startPlaybackFrom()\' on null instance of the player engine"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/player/PlayerController;->getDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1, p2}, Lcom/kaltura/playkit/player/PlayerEngine;->startFrom(J)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The start position is grater then duration of the video! Start position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", duration "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaEntry;->getDuration()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private switchPlayersIfRequired(Lcom/kaltura/playkit/player/PlayerEngineType;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;

    sget-object v1, Lcom/kaltura/playkit/player/PlayerEngineType;->Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->removePlayerView()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->destroy()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-static {v0, p1, v1}, Lcom/kaltura/playkit/player/PlayerEngineFactory;->initializePlayerEngine(Landroid/content/Context;Lcom/kaltura/playkit/player/PlayerEngineType;Lcom/kaltura/playkit/player/PlayerSettings;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    sget-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->MediaPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->addPlayerView()V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/PlayerController;->togglePlayerListeners(Z)V

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;
    :try_end_0
    .catch Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/kaltura/playkit/player/PKPlayerErrorType;->FAILED_TO_INITIALIZE_PLAYER:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/kaltura/playkit/player/PlayerController;->sendErrorMessage(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private togglePlayerListeners(Z)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->eventTrigger:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine;->setEventListener(Lcom/kaltura/playkit/player/PlayerEngine$EventListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->stateChangedTrigger:Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine;->setStateChangedListener(Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine;->setEventListener(Lcom/kaltura/playkit/player/PlayerEngine$EventListener;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine;->setStateChangedListener(Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;)V

    :goto_0
    return-void
.end method

.method private updateProgress()V
    .locals 7

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v2}, Lcom/kaltura/playkit/player/PlayerEngine;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    new-instance v5, Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/kaltura/playkit/PlayerEvent$PlayheadUpdated;-><init>(JJ)V

    invoke-interface {v4, v5}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->updateProgressAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/PlayerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->updateProgressAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/kaltura/playkit/player/PlayerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public changeTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Attempt to invoke \'changeTrack()\' on null instance of the player engine"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/player/PlayerEngine;->changeTrack(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerEngineView:Lcom/kaltura/playkit/player/PlayerView;

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/PlayerView;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->destroy()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/PlayerController;->togglePlayerListeners(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    sget-object v0, Lcom/kaltura/playkit/player/PlayerEngineType;->Unknown:Lcom/kaltura/playkit/player/PlayerEngineType;

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->currentPlayerType:Lcom/kaltura/playkit/player/PlayerEngineType;

    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kaltura/playkit/PKController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Attempt to invoke \'getController()\' on null instance of the player engine"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/player/PlayerEngine;->getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v0, v0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackRate()F
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->getPlaybackRate()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Lcom/kaltura/playkit/Player$Settings;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    return-object v0
.end method

.method public getView()Lcom/kaltura/playkit/player/PlayerView;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->rootPlayerView:Lcom/kaltura/playkit/player/PlayerView;

    return-object v0
.end method

.method public isLive()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->isLive()Z

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
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplicationPaused()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationPaused"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'release()\' on null instance of the player engine"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->pause()V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->cancelUpdateProgress()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/PlayerController;->togglePlayerListeners(Z)V

    return-void
.end method

.method public onApplicationResumed()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "onApplicationResumed"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->play()V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->updateProgress()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kaltura/playkit/player/PlayerController;->togglePlayerListeners(Z)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->onOrientationChanged()V

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'pause()\' on null instance of the player engine"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->pause()V

    return-void
.end method

.method public play()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "play"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'play()\' on null instance of the player engine"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->addPlayerView()V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->play()V

    return-void
.end method

.method public prepare(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKMediaConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "source config not found. Can not prepare source."

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    instance-of p1, p1, Lcom/kaltura/playkit/player/vr/VRPKMediaEntry;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerSettings;->isVRPlayerEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    iget-object v0, v0, Lcom/kaltura/playkit/player/PKMediaSourceConfig;->mediaSource:Lcom/kaltura/playkit/PKMediaSource;

    invoke-virtual {v0}, Lcom/kaltura/playkit/PKMediaSource;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kaltura/playkit/player/PlayerEngineFactory;->selectPlayerType(Lcom/kaltura/playkit/PKMediaFormat;Z)Lcom/kaltura/playkit/player/PlayerEngineType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/PlayerController;->switchPlayersIfRequired(Lcom/kaltura/playkit/player/PlayerEngineType;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sourceConfig:Lcom/kaltura/playkit/player/PKMediaSourceConfig;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine;->load(Lcom/kaltura/playkit/player/PKMediaSourceConfig;)V

    :cond_2
    return-void
.end method

.method public varargs removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    return-void
.end method

.method public removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    return-void
.end method

.method public removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    return-void
.end method

.method public replay()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "replay"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Attempt to invoke \'replay()\' on null instance of the player engine"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->replay()V

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "Attempt to invoke \'seekTo()\' on null instance of the player engine"

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/kaltura/playkit/player/PlayerController;->targetSeekPosition:J

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1, p2}, Lcom/kaltura/playkit/player/PlayerEngine;->seekTo(J)V

    return-void
.end method

.method public setEventListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method public setMedia(Lcom/kaltura/playkit/PKMediaConfig;)Z
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "setMedia"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerController;->isNewEntry:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/kaltura/playkit/player/PlayerController;->isNewEntry:Z

    invoke-virtual {p0}, Lcom/kaltura/playkit/player/PlayerController;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v0}, Lcom/kaltura/playkit/player/PlayerSettings;->getContentRequestAdapter()Lcom/kaltura/playkit/PKRequestParams$Adapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/kaltura/playkit/PKRequestParams$Adapter;->updateParams(Lcom/kaltura/playkit/Player;)V

    :cond_1
    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object v0

    iget-object v2, p0, Lcom/kaltura/playkit/player/PlayerController;->playerSettings:Lcom/kaltura/playkit/player/PlayerSettings;

    invoke-virtual {v2}, Lcom/kaltura/playkit/player/PlayerSettings;->getPreferredMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kaltura/playkit/player/SourceSelector;->selectSource(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaFormat;)Lcom/kaltura/playkit/PKMediaSource;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/kaltura/playkit/player/PKPlayerErrorType;->SOURCE_SELECTION_FAILED:Lcom/kaltura/playkit/player/PKPlayerErrorType;

    const-string v0, "No playable source found for entry"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->sendErrorMessage(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p1}, Lcom/kaltura/playkit/PKMediaConfig;->getMediaEntry()Lcom/kaltura/playkit/PKMediaEntry;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/kaltura/playkit/player/PlayerController;->initSourceConfig(Lcom/kaltura/playkit/PKMediaEntry;Lcom/kaltura/playkit/PKMediaSource;)V

    iget-object p1, p0, Lcom/kaltura/playkit/player/PlayerController;->eventTrigger:Lcom/kaltura/playkit/player/PlayerEngine$EventListener;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-interface {p1, v0}, Lcom/kaltura/playkit/player/PlayerEngine$EventListener;->onEvent(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return v1
.end method

.method public setPlaybackRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/player/PlayerEngine;->setPlaybackRate(F)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-nez v0, :cond_0

    sget-object p1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Attempt to invoke \'setVolume()\' on null instance of the player engine"

    invoke-virtual {p1, v0}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/player/PlayerEngine;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaltura/playkit/player/PlayerController;->isPlayerStopped:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Generic;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->STOPPED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/PlayerEvent$Generic;-><init>(Lcom/kaltura/playkit/PlayerEvent$Type;)V

    invoke-direct {p0}, Lcom/kaltura/playkit/player/PlayerController;->cancelUpdateProgress()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kaltura/playkit/player/PlayerController;->isPlayerStopped:Z

    sget-object v1, Lcom/kaltura/playkit/player/PlayerController;->log:Lcom/kaltura/playkit/PKLog;

    const-string v2, "sending STOPPED event "

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kaltura/playkit/player/PlayerController;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    invoke-interface {v1, v0}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController;->player:Lcom/kaltura/playkit/player/PlayerEngine;

    invoke-interface {v0}, Lcom/kaltura/playkit/player/PlayerEngine;->stop()V

    :cond_0
    return-void
.end method

.method public updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/kaltura/playkit/Assert;->shouldNeverHappen()V

    return-void
.end method
