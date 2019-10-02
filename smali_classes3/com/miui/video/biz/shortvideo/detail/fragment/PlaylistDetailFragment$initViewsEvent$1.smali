.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "PlaylistDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n671#2:563\n744#2,2:564\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1\n*L\n419#1:563\n419#1,2:564\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1",
        "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroid/support/v7/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_7

    const-string p1, "onScrollStateChanged"

    const-string p2, "start idle"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v6, :cond_2

    check-cast v6, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v6}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "items_full_image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ne p2, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const-string v4, "onScrollStateChanged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstComplete:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";first:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onScrollStateChanged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastComplete:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";last:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "onScrollStateChanged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_5

    const-string p1, "onScrollStateChanged"

    const-string v0, "start play last"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1, p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p2

    if-eq p2, p1, :cond_6

    if-eqz p1, :cond_6

    const-string p2, "onScrollStateChanged"

    const-string v0, "start play1"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    return-void

    :cond_6
    if-nez v1, :cond_7

    if-le v0, v3, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p1

    if-eq p1, v3, :cond_7

    const-string p1, "onScrollStateChanged"

    const-string p2, "start play2"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1, v3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    :cond_7
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getLastPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p2

    if-eq p1, p2, :cond_2

    const-string p1, "onScrollStateChanged  onScrolled"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "last:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getLastPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ";current:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getLastPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    sget p2, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container_wrapper:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getScreenChange$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$isFullScreen$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "onScrollStateChanged  onScrolled"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "currentAttached:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ";current:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/miui/video/base/IPlayer;->setAttachMode(Z)V

    const-string p1, "onScrollStateChanged"

    const-string p2, "setAttachMode11"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getVRecyclerView$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1$onScrolled$$inlined$let$lambda$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1$onScrolled$$inlined$let$lambda$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p1, "onScrollStateChanged"

    const-string p2, "setAttachMode22"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
