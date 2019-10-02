.class public interface abstract Lcom/kaltura/playkit/Player;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/Player$Settings;
    }
.end annotation


# virtual methods
.method public varargs abstract addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract changeTrack(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getController(Ljava/lang/Class;)Lcom/kaltura/playkit/PKController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/kaltura/playkit/PKController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaFormat()Lcom/kaltura/playkit/PKMediaFormat;
.end method

.method public abstract getPlaybackRate()F
.end method

.method public abstract getPlayerEngine()Lcom/kaltura/playkit/player/PlayerEngine;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSettings()Lcom/kaltura/playkit/Player$Settings;
.end method

.method public abstract getView()Lcom/kaltura/playkit/player/PlayerView;
.end method

.method public abstract isLive()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onApplicationPaused()V
.end method

.method public abstract onApplicationResumed()V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare(Lcom/kaltura/playkit/PKMediaConfig;)V
    .param p1    # Lcom/kaltura/playkit/PKMediaConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public varargs abstract removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract replay()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setPlaybackRate(F)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method

.method public abstract updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
