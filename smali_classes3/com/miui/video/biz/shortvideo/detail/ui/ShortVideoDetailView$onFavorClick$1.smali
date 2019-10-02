.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;
.super Lcom/miui/video/service/action/ContentActionView;
.source "ShortVideoDetailView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onFavorClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1",
        "Lcom/miui/video/service/action/ContentActionView;",
        "addFavorVideoFail",
        "",
        "failMsg",
        "",
        "deleteFavorVideoFail",
        "result",
        "biz_group_shortvideo_release"
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

.field final synthetic $selected:I

.field final synthetic $viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;


# direct methods
.method constructor <init>(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$selected:I

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-direct {p0}, Lcom/miui/video/service/action/ContentActionView;-><init>()V

    return-void
.end method


# virtual methods
.method public addFavorVideoFail(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/action/ContentActionView;->addFavorVideoFail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v0, "data[3]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$selected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void
.end method

.method public deleteFavorVideoFail(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/action/ContentActionView;->deleteFavorVideoFail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v0, "data[3]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$selected:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$viewObject:Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;->$data:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void
.end method
