.class Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;
.super Ljava/lang/Object;
.source "DragGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

.field private mTouchSlop:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mTouchSlop:I

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

    return-void
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method


# virtual methods
.method isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    return v0
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    if-ne v2, v4, :cond_2

    if-nez v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchX:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchY:F

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchX:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchY:F

    goto/16 :goto_0

    :pswitch_3
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz p1, :cond_3

    iput-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;->onDragEnd()V

    :cond_3
    iput v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    iput v2, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchY:F

    sub-float v3, p1, v3

    iget-boolean v4, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    if-nez v4, :cond_4

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    iget v6, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mTouchSlop:I

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

    invoke-interface {v4, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;->onDragBegin(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    :cond_4
    iget-boolean v4, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

    invoke-interface {v4, v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;->onDrag(FF)V

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchX:F

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchY:F

    goto :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mListener:Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector$OnDragGestureListener;->onDragEnd()V

    :cond_5
    iput v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    iput v2, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    goto :goto_0

    :pswitch_6
    iput v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mActivePointerId:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchX:F

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mLastTouchY:F

    iput-boolean v3, p0, Lcom/miui/video/biz/videoplus/player/widget/DragGestureDetector;->mIsDragging:Z

    :cond_6
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
