.class final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;
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
        "Lcom/miui/video/base/model/MediaData$Media;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/base/model/MediaData$Media;",
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

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;->this$0:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->access$getHeadVideoView$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/longvideo/view/HeadVideoView;->setData(Lcom/miui/video/base/model/MediaData$Media;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/base/model/MediaData$Media;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;->accept(Lcom/miui/video/base/model/MediaData$Media;)V

    return-void
.end method
