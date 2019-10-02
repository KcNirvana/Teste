.class public final Lcom/miui/video/biz/longvideo/view/HeadVideoView$initPlayer$1;
.super Ljava/lang/Object;
.source "HeadVideoView.kt"

# interfaces
.implements Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/longvideo/view/HeadVideoView;->initPlayer()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/longvideo/view/HeadVideoView$initPlayer$1",
        "Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;",
        "onEpisodeChanged",
        "",
        "episode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/longvideo/view/HeadVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/longvideo/view/HeadVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/view/HeadVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeChanged(Lcom/miui/video/base/model/MediaData$Episode;)V
    .locals 3
    .param p1    # Lcom/miui/video/base/model/MediaData$Episode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/view/HeadVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/longvideo/view/HeadVideoView;->access$getTAG$p(Lcom/miui/video/biz/longvideo/view/HeadVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "episode.id:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/view/HeadVideoView$initPlayer$1;->this$0:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/longvideo/view/HeadVideoView;->playEpisode(Lcom/miui/video/base/model/MediaData$Episode;)V

    return-void
.end method
