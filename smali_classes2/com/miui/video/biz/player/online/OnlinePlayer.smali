.class public final Lcom/miui/video/biz/player/online/OnlinePlayer;
.super Ljava/lang/Object;
.source "OnlinePlayer.kt"

# interfaces
.implements Lcom/miui/video/base/IPlayer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0010H\u0016J\u0016\u0010\u0011\u001a\u00020\u000c2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u0006H\u0016J\u0008\u0010#\u001a\u00020\u000cH\u0016J\u0010\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0016J\u0008\u0010(\u001a\u00020\u000cH\u0016J\u0010\u0010)\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u0016H\u0016J\u0010\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u00020\u000c2\u0008\u0010/\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u00100\u001a\u00020\u000c2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/OnlinePlayer;",
        "Lcom/miui/video/base/IPlayer;",
        "hostActivity",
        "Landroid/support/v4/app/FragmentActivity;",
        "(Landroid/support/v4/app/FragmentActivity;)V",
        "TAG",
        "",
        "corePlayer",
        "Lcom/miui/video/biz/player/online/core/VideoCore;",
        "getCorePlayer",
        "()Lcom/miui/video/biz/player/online/core/VideoCore;",
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
        "layout",
        "Landroid/widget/FrameLayout;",
        "fr",
        "Landroid/support/v4/app/Fragment;",
        "notifyToDetailPage",
        "id",
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
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hostActivity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    const-string p1, "OnlinePlayer"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->TAG:Ljava/lang/String;

    new-instance p1, Lcom/miui/video/biz/player/online/core/VideoCore;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->hostActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    return-void
.end method


# virtual methods
.method public addChangeEpisodeListener(Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->addChangeEpisodeListener(Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;)V

    return-void
.end method

.method public addPlayStatusListener(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$IVideoStatusListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->addPlayStatusListener(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V

    return-void
.end method

.method public addVideos(Ljava/util/List;)V
    .locals 1
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

    const-string v0, "videos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->addVideos(Ljava/util/List;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->TAG:Ljava/lang/String;

    const-string v1, " dispatchKeyEvent "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final getCorePlayer()Lcom/miui/video/biz/player/online/core/VideoCore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    return-object v0
.end method

.method public getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V

    return-void
.end method

.method public initVideoLayout(Landroid/widget/FrameLayout;)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->initVideoLayout$default(Lcom/miui/video/biz/player/online/core/VideoCore;Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;ILjava/lang/Object;)V

    return-void
.end method

.method public initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public notifyToDetailPage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->notifyToDetailPage(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->onActivityDestroy()V

    return-void
.end method

.method public play(I)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/video/biz/player/online/core/VideoCore;->play$default(Lcom/miui/video/biz/player/online/core/VideoCore;IIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public play(II)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/core/VideoCore;->play(II)Z

    move-result p1

    return p1
.end method

.method public releasePlayer()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->TAG:Ljava/lang/String;

    const-string v1, " releasePlayer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->releasePlayer()V

    return-void
.end method

.method public setAttachMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->setAttach(Z)V

    return-void
.end method

.method public setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/IPlayer$playerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->setTarget(Ljava/lang/String;)V

    return-void
.end method

.method public setVideos(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->setVideos(Lcom/miui/video/base/model/MediaData$Media;)V

    return-void
.end method

.method public switchPlayingVideo(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->TAG:Ljava/lang/String;

    const-string v1, " switchPlayingVideo "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/OnlinePlayer;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->switchPlayingVideo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
