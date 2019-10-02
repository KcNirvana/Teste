.class public final Lcom/miui/videoplayer/biz/service/preload/router/LocalServerServiceImpl;
.super Ljava/lang/Object;
.source "LocalServerServiceImpl.kt"

# interfaces
.implements Lcom/miui/video/base/routers/localserver/LocalServerService;


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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016J\u0016\u0010\u0013\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0011H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/router/LocalServerServiceImpl;",
        "Lcom/miui/video/base/routers/localserver/LocalServerService;",
        "()V",
        "getCacheVideoPreloadId",
        "",
        "id",
        "getCacheVideoUrl",
        "getLocalServerUrl",
        "getServerValidUA",
        "context",
        "Landroid/content/Context;",
        "applicationName",
        "getTargetHost",
        "url",
        "preDownload",
        "",
        "entitys",
        "",
        "Lcom/miui/video/base/model/PreloadOriginVideoEntity;",
        "preDownloadForItemId",
        "Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;",
        "biz_service_preload_release"
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
.method public getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocalServerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->getLocalServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerValidUA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaUtilsKt;->getUA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTargetHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->Companion:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$Companion;->getTargetHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public preDownload(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/model/PreloadOriginVideoEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->preDownload(Ljava/util/List;)V

    return-void
.end method

.method public preDownloadForItemId(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->preDownloadForItemId(Ljava/util/List;)V

    return-void
.end method
