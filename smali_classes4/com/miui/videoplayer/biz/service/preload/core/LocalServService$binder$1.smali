.class public final Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;
.super Lcom/miui/videoplayer/biz/service/preload/IServerInterface$Stub;
.source "LocalServService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;-><init>()V
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0008H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1",
        "Lcom/miui/videoplayer/biz/service/preload/IServerInterface$Stub;",
        "downloadVideo",
        "",
        "videoDownloadEntitys",
        "",
        "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
        "getCacheVideoPreloadId",
        "",
        "id",
        "getCacheVideoUrl",
        "getServerPort",
        "",
        "getServerUrl",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;

    invoke-direct {p0}, Lcom/miui/videoplayer/biz/service/preload/IServerInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadVideo(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LocalServService"

    const-string v1, "downloadVideo"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->downloadVideo(Ljava/util/List;)V

    return-void
.end method

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

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->getCacheVideoPreloadId(Ljava/lang/String;)Ljava/lang/String;

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

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->Companion:Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader$Companion;->getInstance()Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/videoplayer/biz/service/preload/download/VideoDownloader;->getCacheVideoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerPort()I
    .locals 1

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->getMServerPort()I

    move-result v0

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService$binder$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServService;->getMServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
