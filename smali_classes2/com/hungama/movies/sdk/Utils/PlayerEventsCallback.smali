.class public interface abstract Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;
.super Ljava/lang/Object;
.source "PlayerEventsCallback.java"


# virtual methods
.method public abstract changeOrientation(I)V
.end method

.method public abstract onCastConnected()V
.end method

.method public abstract onDataConsumption(J)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onFail(Lcom/hungama/movies/sdk/Utils/WebServiceError;)V
.end method

.method public abstract onPlaybackProgress(JJ)V
.end method

.method public abstract onPlayerBufferingStateChanged(Z)V
.end method

.method public abstract onSeekingProgressChanged(I)V
.end method

.method public abstract onSeekingStateChanged(Z)V
.end method

.method public abstract onStateChanged(Lcom/hungama/movies/sdk/Utils/PlaybackState;)V
.end method

.method public abstract onVariantChanged(Lcom/hungama/movies/sdk/Utils/M3u8MetaData;)V
.end method

.method public abstract onVariantList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/hungama/movies/sdk/Utils/M3u8MetaData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showToolBar(Z)V
.end method
