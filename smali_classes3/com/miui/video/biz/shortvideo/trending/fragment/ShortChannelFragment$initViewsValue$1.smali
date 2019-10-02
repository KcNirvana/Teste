.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;
.super Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;
.source "ShortChannelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->initViewsValue()V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "onLoadData",
        "",
        "it",
        "",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;",
            "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
            "Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    return-void
.end method


# virtual methods
.method protected onLoadData(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getRefreshStrategy()Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->isPullRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getRefreshStrategy()Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->setRecyclerWithRefreshStrategy(Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->setLoadMoreDisable()V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getView()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getRefreshStrategy()Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;->onLoad(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getView()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v2, v2}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->scrollToPosition(ZI)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getView()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->setList(Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->setListLoadingBar()V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->this$0:Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;->access$isUserVisible$p(Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/ShortChannelFragment$initViewsValue$1;->getView()Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;->onUIShow()V

    :cond_4
    return-void
.end method
