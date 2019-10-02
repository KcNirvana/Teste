.class final Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->loadAsync(Lcom/miui/video/player/service/model/VideoObject;Lkotlin/jvm/functions/Function1;)Z
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
        "Lcom/miui/video/base/common/net/model/PlayEntity;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/PlayEntity;",
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
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic $networkType:I

.field final synthetic $video:Lcom/miui/video/player/service/model/VideoObject;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    iput p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$networkType:I

    iput-object p4, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/common/net/model/PlayEntity;)V
    .locals 5
    .param p1    # Lcom/miui/video/base/common/net/model/PlayEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAsync onResponse  play?id=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getPlayingVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->getInstance()Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/cache/VideoPlayInfoCacheManager;->put(Lcom/miui/video/base/common/net/model/PlayEntity;)V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    iget v4, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$networkType:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVideoRequestEnd(Ljava/lang/String;ZLjava/lang/String;I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->endStep(I)V

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/PlayEntity;->getPlay_info()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "entity is null"

    iget v3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->$networkType:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVideoRequestEnd(Ljava/lang/String;ZLjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/PlayEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$loadAsync$2;->accept(Lcom/miui/video/base/common/net/model/PlayEntity;)V

    return-void
.end method
