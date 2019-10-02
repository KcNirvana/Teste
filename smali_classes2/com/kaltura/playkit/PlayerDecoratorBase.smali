.class public Lcom/kaltura/playkit/PlayerDecoratorBase;
.super Ljava/lang/Object;
.source "PlayerDecoratorBase.java"

# interfaces
.implements Lcom/kaltura/playkit/Player;


# instance fields
.field private player:Lcom/kaltura/playkit/Player;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1, p2}, Lcom/kaltura/playkit/Player;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public changeTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->changeTrack(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->destroy()V

    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getBufferedPosition()J

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

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()F
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getPlaybackRate()F

    move-result v0

    return v0
.end method

.method getPlayer()Lcom/kaltura/playkit/Player;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    return-object v0
.end method

.method public getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/kaltura/playkit/Player$Settings;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getSettings()Lcom/kaltura/playkit/Player$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/kaltura/playkit/player/PlayerView;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    return-object v0
.end method

.method public isLive()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->isLive()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onApplicationPaused()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onApplicationPaused()V

    return-void
.end method

.method public onApplicationResumed()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onApplicationResumed()V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onOrientationChanged()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->play()V

    return-void
.end method

.method public prepare(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKMediaConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    return-void
.end method

.method public varargs removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    invoke-interface {p2, p1, v0}, Lcom/kaltura/playkit/Player;->removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method

.method public removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    return-void
.end method

.method public removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    return-void
.end method

.method public replay()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->replay()V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1, p2}, Lcom/kaltura/playkit/Player;->seekTo(J)V

    return-void
.end method

.method public setPlaybackRate(F)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->setPlaybackRate(F)V

    return-void
.end method

.method setPlayer(Lcom/kaltura/playkit/Player;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1}, Lcom/kaltura/playkit/Player;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->stop()V

    return-void
.end method

.method public updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerDecoratorBase;->player:Lcom/kaltura/playkit/Player;

    invoke-interface {v0, p1, p2}, Lcom/kaltura/playkit/Player;->updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
