.class Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;
.super Ljava/lang/Object;
.source "PlayerGestureDetector.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector$OnDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->onDrag(FF)V

    return-void
.end method

.method public onDragBegin(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->canProcessGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    sget-object p1, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;->RIGHT:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;->LEFT:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, v2

    if-lez p1, :cond_2

    sget-object p1, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;->DOWN:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;->UP:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;

    :goto_0
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->onDragBegin(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    return p1
.end method

.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->onDragEnd()V

    return-void
.end method
