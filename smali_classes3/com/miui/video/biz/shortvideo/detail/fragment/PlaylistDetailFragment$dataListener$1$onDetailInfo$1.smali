.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1;
.super Lcom/miui/video/service/action/ContentActionView;
.source "PlaylistDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->onDetailInfo(Ljava/util/List;)V
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
        "com/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1",
        "Lcom/miui/video/service/action/ContentActionView;",
        "queryFavorStateSuccess",
        "",
        "result",
        "Lcom/miui/video/base/common/net/model/ModelBase;",
        "Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    invoke-direct {p0}, Lcom/miui/video/service/action/ContentActionView;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFavorStateSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .locals 2
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

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/ModelBase;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/miui/video/base/routers/personal/favor/ChangeFavorResult;->is_heart:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$setFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDetailInfo$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$switchFavor(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V

    return-void
.end method
