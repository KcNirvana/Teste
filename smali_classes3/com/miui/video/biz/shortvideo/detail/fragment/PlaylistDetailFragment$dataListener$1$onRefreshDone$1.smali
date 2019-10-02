.class final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->onRefreshDone()V
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$setRefreshDone$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$setCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onRefreshDone$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getView()Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->onUIShow()V

    :cond_0
    return-void
.end method
