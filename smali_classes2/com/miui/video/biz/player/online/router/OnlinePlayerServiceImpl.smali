.class public final Lcom/miui/video/biz/player/online/router/OnlinePlayerServiceImpl;
.super Ljava/lang/Object;
.source "OnlinePlayerServiceImpl.kt"

# interfaces
.implements Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;


# annotations
.annotation build Lio/github/prototypez/appjoint/core/ServiceProvider;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/router/OnlinePlayerServiceImpl;",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;",
        "()V",
        "getTrueVideoUrl",
        "",
        "cp",
        "",
        "app_info",
        "callback",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
        "getVideoPlayer",
        "Lcom/miui/video/base/IPlayer;",
        "hostActivity",
        "Landroid/support/v4/app/FragmentActivity;",
        "isSupportPreload",
        "",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrueVideoUrl(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app_info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->getTrueVideoUrl(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    return-void
.end method

.method public getVideoPlayer(Landroid/support/v4/app/FragmentActivity;)Lcom/miui/video/base/IPlayer;
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hostActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/video/biz/player/online/OnlinePlayer;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/player/online/OnlinePlayer;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    check-cast v0, Lcom/miui/video/base/IPlayer;

    return-object v0
.end method

.method public isSupportPreload(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->getDontSupportPreloadCpList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
