.class final Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SupportCp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->getTrueVideoUrl(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;",
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
.field final synthetic $cp:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2;->$cp:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2;->$cp:Ljava/lang/String;

    sget-object v1, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->INSTANCE:Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;

    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp;->getDontSupportPreloadCpList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$1;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$1;-><init>()V

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;

    goto :goto_0

    :cond_0
    const-string v1, "flickstree"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksManager;->Companion:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksManager$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksManager$Companion;->getInstance()Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksManager;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$2;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2$2;-><init>()V

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/SupportCp$getTrueVideoUrl$instance$2;->invoke()Lcom/miui/video/biz/player/online/plugin/cp/CpUrlManager;

    move-result-object v0

    return-object v0
.end method
