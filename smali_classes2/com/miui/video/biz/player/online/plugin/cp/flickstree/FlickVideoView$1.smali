.class Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;
.super Ljava/lang/Object;
.source "FlickVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->access$000(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)V

    new-instance v0, Lcom/flickstree/player/player/sdk/MiVideoSDK;

    invoke-direct {v0}, Lcom/flickstree/player/player/sdk/MiVideoSDK;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    invoke-static {v2}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->access$100(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView$1;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    invoke-static {v3}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->access$200(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2b1cf023431d1f6"

    invoke-virtual {v0, v2, v3, v4}, Lcom/flickstree/player/player/sdk/MiVideoSDK;->getVideoURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;->access$300(Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;Ljava/lang/String;)V

    return-void
.end method
