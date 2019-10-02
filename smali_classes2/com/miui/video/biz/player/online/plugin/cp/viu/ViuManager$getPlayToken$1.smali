.class public final Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;
.super Ljava/lang/Object;
.source "ViuManager.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager;->getPlayToken$biz_player_online_release(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001J\u0014\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008H\u0016J\u0016\u0010\t\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0018\u00010\u0002R\u00020\u0003H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;",
        "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;",
        "onFail",
        "",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "resp",
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
.field final synthetic $callback:Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;->$callback:Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ViuManager"

    const-string v0, "mPlayTokenCallback onFail"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;->$callback:Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;->getTrueUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V
    .locals 3
    .param p1    # Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "ViuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayTokenCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;->$callback:Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;->getTrueUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;->$callback:Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;->getTrueUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuManager$getPlayToken$1;->onSuccess(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V

    return-void
.end method
