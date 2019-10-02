.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1;
.super Ljava/lang/Object;
.source "ShortVideoPlayerContainer.kt"

# interfaces
.implements Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->initPlayer()V
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
        "com/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1",
        "Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;",
        "onEpisodeChanged",
        "",
        "episode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeChanged(Lcom/miui/video/base/model/MediaData$Episode;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/model/MediaData$Episode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->playEpisode(Lcom/miui/video/base/model/MediaData$Episode;)V

    return-void
.end method
