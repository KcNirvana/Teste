.class public Lcom/miui/video/player/service/controller/ControllerView;
.super Landroid/widget/FrameLayout;
.source "ControllerView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ControllerView"


# instance fields
.field private mGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

.field private mIsInterceptEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/ControllerView;->mIsInterceptEvent:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/ControllerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/ControllerView;->mIsInterceptEvent:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/ControllerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/ControllerView;->mIsInterceptEvent:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/ControllerView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/ControllerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/video/player/service/play/ViewGestureHandler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/ControllerView;->mGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/ControllerView;->mIsInterceptEvent:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/ControllerView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/ControllerView;->mGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setGestureListener(Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/ControllerView;->mGestureHandler:Lcom/miui/video/player/service/play/ViewGestureHandler;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/play/ViewGestureHandler;->setGestureListener(Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;)V

    return-void
.end method

.method public setIsInterceptEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/ControllerView;->mIsInterceptEvent:Z

    return-void
.end method
