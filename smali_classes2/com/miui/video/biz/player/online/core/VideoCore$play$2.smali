.class final Lcom/miui/video/biz/player/online/core/VideoCore$play$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoCore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->play(Lcom/miui/video/player/service/model/VideoObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/video/common/feed/entity/PlayInfo;",
        ">;",
        "Lkotlin/Unit;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "",
        "Lcom/miui/video/common/feed/entity/PlayInfo;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $video:Lcom/miui/video/player/service/model/VideoObject;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$play$2;->$video:Lcom/miui/video/player/service/model/VideoObject;

    invoke-static {v0, v1, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$onVideoPlayInfoLoaded(Lcom/miui/video/biz/player/online/core/VideoCore;Lcom/miui/video/player/service/model/VideoObject;Ljava/util/List;)V

    return-void
.end method
