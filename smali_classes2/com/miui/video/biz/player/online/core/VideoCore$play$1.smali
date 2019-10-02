.class final Lcom/miui/video/biz/player/online/core/VideoCore$play$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->play(II)Z
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $ciIndex:I

.field final synthetic $seekPos:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iput p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->$ciIndex:I

    iput p3, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->$seekPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iget v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->$ciIndex:I

    iget v2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$1;->$seekPos:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/core/VideoCore;->play(II)Z

    return-void
.end method
