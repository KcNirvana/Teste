.class public final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;
.super Ljava/lang/Object;
.source "LocalServerManager.kt"

# interfaces
.implements Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalServerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalServerManager.kt\ncom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1\n*L\n1#1,215:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1",
        "Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;",
        "getTrueUrl",
        "",
        "url",
        "",
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
.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrueUrl(Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-virtual {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->getDownloadList()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "LocalServerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addDownloadVideo: url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-virtual {v1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->getDownloadList()Ljava/util/List;

    move-result-object v1

    new-instance v10, Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    iget-object v2, v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getItem_id()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    iget-object v2, v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getPreload_type()I

    move-result v5

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    iget-object v2, v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getPreload_page()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    iget-object v2, v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;

    iget-object v2, v2, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1;->$entity:Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;->getTag()J

    move-result-wide v8

    move-object v2, v10

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/miui/videoplayer/biz/service/preload/model/VideoDownloadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-virtual {p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->getMPreloadHandler()Landroid/os/Handler;

    move-result-object p1

    sget-object v1, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1$getTrueUrl$1$1;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$addDownloadVideo$1$1$getTrueUrl$1$1;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
