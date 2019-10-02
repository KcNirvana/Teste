.class Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;
.super Ljava/lang/Object;
.source "HungamaNewVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->Companion:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager$Companion;->getInstance()Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$300(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaManager;->getTureUrl(Ljava/lang/String;Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService$cpTureVideoUrlCallback;)V

    return-void
.end method
