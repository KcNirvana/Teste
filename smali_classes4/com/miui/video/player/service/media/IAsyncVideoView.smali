.class public interface abstract Lcom/miui/video/player/service/media/IAsyncVideoView;
.super Ljava/lang/Object;
.source "IAsyncVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetSupportedResolutionsCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetUriCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;,
        Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;
    }
.end annotation


# virtual methods
.method public abstract getCurrentPlaybackRate(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V
.end method

.method public abstract getCurrentPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V
.end method

.method public abstract getCurrentResolution(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;)V
.end method

.method public abstract getDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V
.end method

.method public abstract getSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
.end method

.method public abstract getSupportedResolutions(Lcom/miui/video/player/service/media/IAsyncVideoView$GetSupportedResolutionsCallback;)V
.end method

.method public abstract getUri(Lcom/miui/video/player/service/media/IAsyncVideoView$GetUriCallback;)V
.end method

.method public abstract isAdsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;)V
.end method

.method public abstract isInPlaybackState(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsInPlaybackStateCallback;)V
.end method

.method public abstract isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
.end method

.method public abstract setOnPlaybackResolutionListener(Lcom/miui/video/player/service/media/IAsyncVideoView$OnPlaybackResolutionListener;)V
.end method

.method public abstract setPlaybackRate(F)V
.end method

.method public abstract setPlaybackRateChanged(Lcom/miui/video/player/service/media/IAsyncVideoView$RatePlaybackChangedListener;)V
.end method
