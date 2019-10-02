.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;
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
        "Lcom/miui/video/base/model/MediaData$Episode;",
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
        "Lcom/miui/video/base/model/MediaData$Episode;",
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

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/model/MediaData$Episode;)V
    .locals 2

    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Episode;->groupName:Ljava/lang/String;

    const-string v1, "episodes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Episode;->groupName:Ljava/lang/String;

    const-string v1, "trailers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Episode;->groupName:Ljava/lang/String;

    const-string v1, "recommend"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p1, Lcom/miui/video/base/model/MediaData$Episode;->groupName:Ljava/lang/String;

    const-string v1, "trending"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->trending_list:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/model/MediaData$Episode;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;->accept(Lcom/miui/video/base/model/MediaData$Episode;)V

    return-void
.end method
