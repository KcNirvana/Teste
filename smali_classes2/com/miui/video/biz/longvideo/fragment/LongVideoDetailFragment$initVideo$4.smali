.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;
.super Ljava/lang/Object;
.source "LongVideoDetailFragment.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->initVideo(Lio/reactivex/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/common/net/model/CardRowListEntity;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/common/net/model/CardRowListEntity;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getRow_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "long_video_detail"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "it.item_list[0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getPlaylistId$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setPlaylistId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it.item_list[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v2, v3}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$convertToMedia(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$setMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/base/model/MediaData$Media;)V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/model/CardRowListEntity;->getItem_list()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "it.item_list[0]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {v2, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$convertToEpisode(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/common/net/model/CardRowListEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;->accept(Lcom/miui/video/base/common/net/model/CardRowListEntity;)V

    return-void
.end method
