.class public final Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;
.super Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.source "SearchHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->initFeedPresenter()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "convertToFeedRow",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "it",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/video/biz/search/fragment/SearchHomeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;Ljava/util/List;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
            "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchHomeFragment;

    iput-object p2, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;->$list:Ljava/util/List;

    invoke-direct {p0, p3, p4, p5}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method


# virtual methods
.method protected convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 3
    .param p1    # Lcom/miui/video/base/common/net/model/CardRowListEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->convertToFeedRow(Lcom/miui/video/base/common/net/model/CardRowListEntity;)Lcom/miui/video/common/feed/entity/FeedRowEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search_history"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/fragment/SearchHomeFragment$initFeedPresenter$1;->this$0:Lcom/miui/video/biz/search/fragment/SearchHomeFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/search/fragment/SearchHomeFragment;->access$setMHistoryEntity$p(Lcom/miui/video/biz/search/fragment/SearchHomeFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "row_tag_list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v2, "tinyCardEntity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setLayoutType(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method
