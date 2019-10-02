.class Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$100(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;->access$201(Lcom/miui/video/biz/player/online/plugin/cp/hungama/HungamaNewVideoView;Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method
