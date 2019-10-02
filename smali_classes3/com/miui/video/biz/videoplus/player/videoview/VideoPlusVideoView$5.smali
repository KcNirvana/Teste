.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$1600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->pause()V

    :cond_0
    return-void
.end method
