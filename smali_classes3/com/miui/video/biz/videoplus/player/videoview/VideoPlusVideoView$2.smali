.class Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;
.super Ljava/lang/Object;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;II)V
    .locals 0

    const-string p2, "VideoPlusVideoView"

    const-string p3, "onSurfaceCreated:  Preview "

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    invoke-static {p2, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    return-void
.end method

.method public onSurfaceDestroyed(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;->this$0:Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->access$402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    return-void
.end method
