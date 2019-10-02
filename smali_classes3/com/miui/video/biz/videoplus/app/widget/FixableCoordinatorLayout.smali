.class public Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;
.super Landroid/support/design/widget/CoordinatorLayout;
.source "FixableCoordinatorLayout.java"


# instance fields
.field mDropMotionEvent:Z

.field mFixable:Z

.field public mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mFixable:Z

    sget-object p1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->EXPANDED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mDropMotionEvent:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mDropMotionEvent:Z

    :cond_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dropMotionEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mDropMotionEvent:Z

    return-void
.end method

.method public getFixable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mFixable:Z

    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mFixable:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mFixable:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    sget-object v1, Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;->COLLAPSED:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setFixable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mFixable:Z

    return-void
.end method

.method public setStateOfAppBar(Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;)Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/FixableCoordinatorLayout;->mStateOfAppBar:Lcom/miui/video/biz/videoplus/app/listener/AppBarLayoutStateListener$State;

    return-object p0
.end method
