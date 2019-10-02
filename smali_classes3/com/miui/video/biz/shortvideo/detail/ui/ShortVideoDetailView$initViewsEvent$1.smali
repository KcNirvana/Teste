.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;
.super Ljava/lang/Object;
.source "ShortVideoDetailView.kt"

# interfaces
.implements Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->initViewsEvent()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1",
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;",
        "play",
        "",
        "mediaData",
        "Lcom/miui/video/base/model/MediaData$Media;",
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
.field final synthetic this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public play(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 1
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$getOutPlayListener$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;->play(Lcom/miui/video/base/model/MediaData$Media;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;->this$0:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;

    invoke-static {v0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->access$setMMediaData$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/base/model/MediaData$Media;)V

    return-void
.end method
