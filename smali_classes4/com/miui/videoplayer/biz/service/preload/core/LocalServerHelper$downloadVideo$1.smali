.class final Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;
.super Ljava/lang/Object;
.source "LocalServerHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->downloadVideo(Ljava/util/List;)V
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
.field final synthetic $myList:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;


# direct methods
.method constructor <init>(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    iput-object p2, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->$myList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "LocalServerHelper"

    const-string v1, "downloadVideo"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    invoke-static {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->access$getMyIServerInterface$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    invoke-static {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->access$getMyIServerInterface$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->$myList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/IServerInterface;->downloadVideo(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    invoke-static {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->access$bindSer(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)V

    iget-object v0, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->this$0:Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;

    invoke-static {v0}, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;->access$getMyIServerInterface$p(Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper;)Lcom/miui/videoplayer/biz/service/preload/IServerInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/videoplayer/biz/service/preload/core/LocalServerHelper$downloadVideo$1;->$myList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/videoplayer/biz/service/preload/IServerInterface;->downloadVideo(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method
