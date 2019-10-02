.class final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;
.super Ljava/lang/Object;
.source "LocalServerManager.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->preDownloadForItemId(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/video/base/common/net/model/PlayEntity;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/miui/video/base/common/net/model/PlayEntity;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $tagMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->$tagMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 12
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/PlayEntity;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/net/model/PlayEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getVideo_status()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/miui/video/base/model/PreloadOriginVideoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/feed/entity/PlayInfo;

    iget-object v4, v2, Lcom/miui/video/common/feed/entity/PlayInfo;->cp:Ljava/lang/String;

    const-string v2, "playEntity.play_info[0].cp"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/feed/entity/PlayInfo;

    iget-object v5, v2, Lcom/miui/video/common/feed/entity/PlayInfo;->vid:Ljava/lang/String;

    const-string v2, "playEntity.play_info[0].vid"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/feed/entity/PlayInfo;

    iget-object v2, v2, Lcom/miui/video/common/feed/entity/PlayInfo;->app_info:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "playEntity.play_info[0].app_info.toString()"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->$tagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getItem_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v2, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;->getPreload_type()I

    move-result v7

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->$tagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getItem_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v2, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;->getPreload_page()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->$tagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getItem_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    check-cast v2, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    invoke-virtual {v2}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager$preDownloadForItemId$2;->$tagMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/miui/video/base/common/net/model/PlayEntity;->getItem_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    check-cast v0, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;

    invoke-virtual {v0}, Lcom/miui/video/base/model/PreloadReqPlayInfoEntity;->getTag()J

    move-result-wide v10

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-wide v9, v10

    invoke-direct/range {v2 .. v10}, Lcom/miui/video/base/model/PreloadOriginVideoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->INSTANCE:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;

    invoke-static {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;->access$addDownloadVideo(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerManager;Lcom/miui/video/base/model/PreloadOriginVideoEntity;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
