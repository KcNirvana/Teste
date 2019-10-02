.class final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1\n*L\n1#1,562:1\n*E\n"
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-interface {v1, v0, v3}, Lcom/miui/video/base/IPlayer;->initVideoLayout(Landroid/widget/FrameLayout;Landroid/support/v4/app/Fragment;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$setCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->setAttachMode(Z)V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v4}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    const-string v1, "item.get(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlayProgress()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v3

    long-to-int v0, v0

    invoke-interface {v2, v3, v0}, Lcom/miui/video/base/IPlayer;->play(II)Z

    const-string v0, "onScrollStateChanged"

    const-string v1, "realplay"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
