.class public interface abstract Lcom/miui/video/base/IPlayer;
.super Ljava/lang/Object;
.source "IPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/IPlayer$playerMode;,
        Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;,
        Lcom/miui/video/base/IPlayer$IVideoStatusListener;,
        Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001:\u0004,-./J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0007H&J\u0016\u0010\u0008\u001a\u00020\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH&J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0008\u0010\u001b\u001a\u00020\u0003H&J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0018\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH&J\u0008\u0010 \u001a\u00020\u0003H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\rH&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%H&J\u0012\u0010&\u001a\u00020\u00032\u0008\u0010\'\u001a\u0004\u0018\u00010\u001aH&J\u0012\u0010(\u001a\u00020\u00032\u0008\u0010)\u001a\u0004\u0018\u00010*H&J\u0010\u0010+\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH&\u00a8\u00060"
    }
    d2 = {
        "Lcom/miui/video/base/IPlayer;",
        "",
        "addChangeEpisodeListener",
        "",
        "listener",
        "Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;",
        "addPlayStatusListener",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "addVideos",
        "videos",
        "",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "dispatchKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "getCurrentPosition",
        "callback",
        "Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;",
        "initVideoLayout",
        "viewGroup",
        "Landroid/widget/FrameLayout;",
        "fr",
        "Landroid/support/v4/app/Fragment;",
        "notifyToDetailPage",
        "id",
        "",
        "onActivityDestroy",
        "play",
        "ciIndex",
        "",
        "seekPos",
        "releasePlayer",
        "setAttachMode",
        "isAttach",
        "setPlayerMode",
        "mode",
        "Lcom/miui/video/base/IPlayer$playerMode;",
        "setTarget",
        "target",
        "setVideos",
        "media",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "switchPlayingVideo",
        "ChangeEpisodeListener",
        "GetCurrentPositionCallback",
        "IVideoStatusListener",
        "playerMode",
        "video_service_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# virtual methods
.method public abstract addChangeEpisodeListener(Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;)V
    .param p1    # Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract addPlayStatusListener(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V
    .param p1    # Lcom/miui/video/base/IPlayer$IVideoStatusListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract addVideos(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V
    .param p1    # Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initVideoLayout(Landroid/widget/FrameLayout;)V
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract notifyToDetailPage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract play(I)Z
.end method

.method public abstract play(II)Z
.end method

.method public abstract releasePlayer()V
.end method

.method public abstract setAttachMode(Z)V
.end method

.method public abstract setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V
    .param p1    # Lcom/miui/video/base/IPlayer$playerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setTarget(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setVideos(Lcom/miui/video/base/model/MediaData$Media;)V
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract switchPlayingVideo(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
