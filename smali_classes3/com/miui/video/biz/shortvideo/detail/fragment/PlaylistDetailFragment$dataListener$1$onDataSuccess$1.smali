.class final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->onDataSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1\n*L\n1#1,562:1\n*E\n"
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
.field final synthetic $list:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;->$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;->$list:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/model/MediaData$Media;

    invoke-direct {v1}, Lcom/miui/video/base/model/MediaData$Media;-><init>()V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$1;->$list:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt;->createFrom(Lcom/miui/video/base/model/MediaData$Media;Ljava/util/List;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->setVideos(Lcom/miui/video/base/model/MediaData$Media;)V

    :cond_0
    return-void
.end method
