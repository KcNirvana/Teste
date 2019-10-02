.class final Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->registerOnListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onCompletion"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnCompletion"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$5;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->onVideoCompleted()V

    return-void
.end method
