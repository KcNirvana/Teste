.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;
.super Ljava/lang/Object;
.source "LongVideoDetailFragment.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "it",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "apply"
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

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;
    .locals 1
    .param p1    # Lcom/miui/video/common/feed/entity/TinyCardEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$convertToEpisode(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;->apply(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p1

    return-object p1
.end method
