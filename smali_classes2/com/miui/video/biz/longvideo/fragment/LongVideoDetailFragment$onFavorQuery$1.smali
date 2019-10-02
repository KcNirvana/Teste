.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;
.super Lcom/miui/video/service/action/ContentActionView;
.source "LongVideoDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onFavorQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1",
        "Lcom/miui/video/service/action/ContentActionView;",
        "queryFavorStateSuccess",
        "",
        "result",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field final synthetic $viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;->$viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-direct {p0}, Lcom/miui/video/service/action/ContentActionView;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFavorStateSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 4
    .param p1    # Lcom/miui/video/base/common/net/model/ModelBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    const-string v1, "data[3]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;

    if-eqz v2, :cond_1

    iget v1, v2, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;->is_heart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;

    iget p1, p1, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;->is_heart:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;->$viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, v3, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_4
    return-void
.end method
