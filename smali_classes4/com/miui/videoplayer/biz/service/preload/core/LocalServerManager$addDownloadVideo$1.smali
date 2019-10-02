.class final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;
.super Ljava/lang/Object;
.source "LocalServerManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->addDownloadVideo(Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;


# direct methods
.method constructor <init>(Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/router/ServiceHolder;->getMOnlinePlayerService()Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getCp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getApp_info()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;

    invoke-direct {v3, p0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;-><init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;)V

    check-cast v3, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;->getTrueVideoUrl(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    return-void
.end method
