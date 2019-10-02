.class final Lcom/miui/video/biz/player/online/core/VideoCore$getCurrentPosition$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "onCurrentPosition"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$getCurrentPosition$1;->$callback:Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCurrentPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$getCurrentPosition$1;->$callback:Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;

    invoke-interface {v0, p1}, Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;->onCurrentPosition(I)V

    return-void
.end method
