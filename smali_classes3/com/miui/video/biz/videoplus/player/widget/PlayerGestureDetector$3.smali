.class Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;
.super Ljava/lang/Object;
.source "PlayerGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;->onScale(FFF)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;->canProcessGesture()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;->onScaleBegin()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$3;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;->onScaleEnd()V

    return-void
.end method
