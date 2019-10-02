.class public interface abstract Lcom/miui/video/biz/player/online/VideoPlayContract$Presenter;
.super Ljava/lang/Object;
.source "VideoPlayContract.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/BaseVideoPresenter;
.implements Lcom/miui/video/base/IPlayer$IVideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/VideoPlayContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H&J\n\u0010\u0014\u001a\u0004\u0018\u00010\tH&J\u0008\u0010\u0015\u001a\u00020\u0016H&J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0008\u0010\u0019\u001a\u00020\u0016H&J\u0010\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u001bH&J\u0008\u0010\u001c\u001a\u00020\u0004H&J\u0008\u0010\u001d\u001a\u00020\u000eH&J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\tH&J\u0010\u0010\u001e\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0016H&J\u0008\u0010!\u001a\u00020\u000eH&J\u0008\u0010\"\u001a\u00020\u000eH&J\u0010\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u0016H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0005R\"\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006%"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/VideoPlayContract$Presenter;",
        "Lcom/miui/video/biz/player/online/BaseVideoPresenter;",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "isAdsPlaying",
        "",
        "()Z",
        "isPlaying",
        "videoList",
        "Ljava/util/ArrayList;",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "Lkotlin/collections/ArrayList;",
        "getVideoList",
        "()Ljava/util/ArrayList;",
        "getIsAdPlaying",
        "",
        "getIsAdPlayingCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;",
        "getIsPlaying",
        "getIsPlayingCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;",
        "getNextVideo",
        "getPlayingPosition",
        "",
        "getCurrentPositionCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;",
        "getVideoDuration",
        "getDurationCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "isAsyncMode",
        "pauseVideo",
        "playVideoAt",
        "video",
        "videoIndex",
        "replay",
        "resumeVideo",
        "seekTo",
        "ms",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract getIsAdPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;)V
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getNextVideo()Lcom/miui/video/player/service/model/VideoObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPlayingPosition()I
.end method

.method public abstract getPlayingPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getVideoDuration()I
.end method

.method public abstract getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getVideoList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isAdsPlaying()Z
.end method

.method public abstract isAsyncMode()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract playVideoAt(I)Z
.end method

.method public abstract playVideoAt(Lcom/miui/video/player/service/model/VideoObject;)Z
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract replay()V
.end method

.method public abstract resumeVideo()V
.end method

.method public abstract seekTo(I)V
.end method
