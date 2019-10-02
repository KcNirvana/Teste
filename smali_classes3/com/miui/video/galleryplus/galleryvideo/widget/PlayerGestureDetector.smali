.class Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;
.super Ljava/lang/Object;
.source "PlayerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;
    }
.end annotation


# instance fields
.field private mDragGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;

.field private mIsSinglePointer:Z

.field private mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mTapGestureDetector:Landroid/view/GestureDetector;

.field private mTouchSlop:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mTouchSlop:I

    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;

    invoke-direct {p3, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mTapGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;

    new-instance p3, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;

    invoke-direct {p3, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)V

    invoke-direct {p2, p1, p3}, Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;-><init>(Landroid/content/Context;Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector$OnDragGestureListener;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mDragGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance p3, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$3;

    invoke-direct {p3, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)V

    invoke-direct {p2, p1, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mIsSinglePointer:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method


# virtual methods
.method isDragging()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mDragGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;->isDragging()Z

    move-result v0

    return v0
.end method

.method isScaling()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mIsSinglePointer:Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->canProcessGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mIsSinglePointer:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mTapGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->mDragGestureDetector:Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/DragGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
