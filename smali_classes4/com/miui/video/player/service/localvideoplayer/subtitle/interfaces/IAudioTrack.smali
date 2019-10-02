.class public interface abstract Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/IAudioTrack;
.super Ljava/lang/Object;
.source "IAudioTrack.java"


# virtual methods
.method public abstract getAudioTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedAudioTrack()I
.end method

.method public abstract selectAudioTrack(I)V
.end method
