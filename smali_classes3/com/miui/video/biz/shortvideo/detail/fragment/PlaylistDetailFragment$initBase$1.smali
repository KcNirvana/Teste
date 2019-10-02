.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.kt"

# interfaces
.implements Lcom/miui/video/base/IPlayer$IVideoStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->initBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n671#2:563\n744#2,2:564\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1\n*L\n216#1:563\n216#1,2:564\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "onVideoStatusChanged",
        "",
        "status",
        "Lcom/miui/video/base/PlayStatus;",
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

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;)V
    .locals 4
    .param p1    # Lcom/miui/video/base/PlayStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_FINISHED_EPISODE:Lcom/miui/video/base/PlayStatus;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$isFullScreen$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMLandscapePlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$setMLandscapePlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "items_full_image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$isNoMoreData$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v0

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq v0, p1, :cond_b

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$scrollToTopAndPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_PAUSED:Lcom/miui/video/base/PlayStatus;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_DESTROY:Lcom/miui/video/base/PlayStatus;

    if-ne p1, v0, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1$onVideoStatusChanged$1$1;

    invoke-direct {v1, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1$onVideoStatusChanged$1$1;-><init>(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    check-cast v1, Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V

    goto :goto_3

    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    return-void
.end method
