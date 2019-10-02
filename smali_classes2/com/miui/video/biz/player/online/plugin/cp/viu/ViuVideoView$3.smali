.class Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;
.super Ljava/lang/Object;
.source "ViuVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$1000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$700(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->access$1100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V

    return-void
.end method
