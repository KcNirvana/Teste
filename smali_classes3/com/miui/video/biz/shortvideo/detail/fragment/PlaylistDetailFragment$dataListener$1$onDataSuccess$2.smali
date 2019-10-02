.class final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;
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
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n1309#2:563\n1378#2,3:564\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2\n*L\n136#1:563\n136#1,3:564\n*E\n"
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;->$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;->$list:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1$onDataSuccess$2;->$list:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v4, Lcom/miui/video/base/model/MediaData$Episode;

    invoke-direct {v4}, Lcom/miui/video/base/model/MediaData$Episode;-><init>()V

    invoke-static {v4, v3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragmentKt;->createFrom(Lcom/miui/video/base/model/MediaData$Episode;Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/miui/video/base/IPlayer;->addVideos(Ljava/util/List;)V

    :cond_1
    return-void
.end method
