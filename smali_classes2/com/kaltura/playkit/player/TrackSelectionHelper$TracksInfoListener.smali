.class interface abstract Lcom/kaltura/playkit/player/TrackSelectionHelper$TracksInfoListener;
.super Ljava/lang/Object;
.source "TrackSelectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/player/TrackSelectionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TracksInfoListener"
.end annotation


# virtual methods
.method public abstract onAudioTrackChanged()V
.end method

.method public abstract onRelease([Ljava/lang/String;)V
.end method

.method public abstract onTextTrackChanged()V
.end method

.method public abstract onTracksInfoReady(Lcom/kaltura/playkit/player/PKTracks;)V
.end method

.method public abstract onVideoTrackChanged()V
.end method
