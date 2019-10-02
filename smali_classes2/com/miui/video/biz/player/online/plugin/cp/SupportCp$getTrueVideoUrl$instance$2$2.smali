.class public final Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$2;
.super Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;
.source "SupportCp.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2;->invoke()Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$2",
        "Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;",
        "getTureUrl",
        "",
        "app_info",
        "",
        "callback",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getTureUrl(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "app_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;->getTrueUrl(Ljava/lang/String;)V

    return-void
.end method
