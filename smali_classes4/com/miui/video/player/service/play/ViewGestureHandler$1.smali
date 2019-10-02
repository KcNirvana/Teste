.class Lcom/miui/video/player/service/play/ViewGestureHandler$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/play/ViewGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/play/ViewGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {v0}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$200(Lcom/miui/video/player/service/play/ViewGestureHandler;)Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onDoubleTap(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$302(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$402(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$502(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ViewGestureHandler"

    const-string v1, "onDown: e = "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$002(Lcom/miui/video/player/service/play/ViewGestureHandler;F)F

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$100(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$000(Lcom/miui/video/player/service/play/ViewGestureHandler;)F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-static {p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$000(Lcom/miui/video/player/service/play/ViewGestureHandler;)F

    move-result p1

    const/16 p3, 0xa

    int-to-float p3, p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$700(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$002(Lcom/miui/video/player/service/play/ViewGestureHandler;F)F

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$802(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z

    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler$1;->this$0:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->access$600(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
