.class public Lcom/flybird/APPullRefreshView;
.super Landroid/widget/FrameLayout;
.source "APPullRefreshView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/APPullRefreshView$RefreshListener;,
        Lcom/flybird/APPullRefreshView$Flinger;
    }
.end annotation


# static fields
.field private static final STATE_CLOSE:B = 0x0t

.field private static final STATE_OPEN:B = 0x1t

.field private static final STATE_OPEN_RELEASE:B = 0x3t

.field private static final STATE_OVER:B = 0x2t

.field private static final STATE_OVER_RELEASE:B = 0x4t

.field private static final STATE_REFRESH:B = 0x5t

.field private static final STATE_REFRESH_RELEASE:B = 0x6t


# instance fields
.field private mEnablePull:Z

.field private mFlinger:Lcom/flybird/APPullRefreshView$Flinger;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastY:I

.field protected mMaxMargin:I

.field protected mOverView:Lcom/alipay/birdnest/api/FBOverView;

.field private mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

.field private mState:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/APPullRefreshView;->mEnablePull:Z

    invoke-direct {p0}, Lcom/flybird/APPullRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/APPullRefreshView;->mEnablePull:Z

    invoke-direct {p0}, Lcom/flybird/APPullRefreshView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/APPullRefreshView;->mEnablePull:Z

    invoke-direct {p0}, Lcom/flybird/APPullRefreshView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/APPullRefreshView;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/flybird/APPullRefreshView;->moveDown(IZ)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/flybird/APPullRefreshView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/flybird/APPullRefreshView$Flinger;

    invoke-direct {v0, p0}, Lcom/flybird/APPullRefreshView$Flinger;-><init>(Lcom/flybird/APPullRefreshView;)V

    iput-object v0, p0, Lcom/flybird/APPullRefreshView;->mFlinger:Lcom/flybird/APPullRefreshView$Flinger;

    return-void
.end method

.method private initListener()V
    .locals 3

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    invoke-interface {v0}, Lcom/flybird/APPullRefreshView$RefreshListener;->getOverView()Lcom/alipay/birdnest/api/FBOverView;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/flybird/APPullRefreshView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flybird/APPullRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/flybird/APPullRefreshView$1;

    invoke-direct {v1, p0}, Lcom/flybird/APPullRefreshView$1;-><init>(Lcom/flybird/APPullRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private moveDown(IZ)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-virtual {p0, v11}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    int-to-double v4, v2

    iget v6, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    iget-byte v6, p0, Lcom/flybird/APPullRefreshView;->mState:B

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/birdnest/api/FBOverView;->onPullto(DB)V

    :cond_0
    if-gtz v2, :cond_3

    if-gez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int p1, v2

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eq v0, v10, :cond_2

    iput-byte v11, p0, Lcom/flybird/APPullRefreshView;->mState:B

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/flybird/APPullRefreshView;->invalidate()V

    return v8

    :cond_3
    iget v3, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    if-gt v2, v3, :cond_6

    iget-object v3, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v3}, Lcom/alipay/birdnest/api/FBOverView;->getState()B

    move-result v3

    if-eq v3, v8, :cond_4

    iget-object v3, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v3}, Lcom/alipay/birdnest/api/FBOverView;->onOpen()V

    iget-object v3, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v3, v8}, Lcom/alipay/birdnest/api/FBOverView;->setState(B)V

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz p2, :cond_5

    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eq v0, v10, :cond_5

    iput-byte v8, p0, Lcom/flybird/APPullRefreshView;->mState:B

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    if-gt v2, v0, :cond_2

    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/flybird/APPullRefreshView;->refresh()V

    goto :goto_0

    :cond_6
    iget-byte v2, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eq v2, v10, :cond_2

    iget-object v2, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/FBOverView;->getState()B

    move-result v2

    if-eq v2, v9, :cond_7

    iget-object v2, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/FBOverView;->onOver()V

    iget-object v2, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v2, v9}, Lcom/alipay/birdnest/api/FBOverView;->setState(B)V

    :cond_7
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz p2, :cond_2

    iput-byte v9, p0, Lcom/flybird/APPullRefreshView;->mState:B

    goto :goto_0
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/FBOverView;->onLoad()V

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/api/FBOverView;->setState(B)V

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    invoke-interface {v0}, Lcom/flybird/APPullRefreshView$RefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method

.method private release(I)V
    .locals 2

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mFlinger:Lcom/flybird/APPullRefreshView$Flinger;

    iget v1, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/flybird/APPullRefreshView$Flinger;->recover(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mFlinger:Lcom/flybird/APPullRefreshView$Flinger;

    invoke-virtual {v0, p1}, Lcom/flybird/APPullRefreshView$Flinger;->recover(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addTouchables(Ljava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public autoRefresh()V
    .locals 2

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/FBOverView;->onLoad()V

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/api/FBOverView;->setState(B)V

    invoke-virtual {p0}, Lcom/flybird/APPullRefreshView;->requestLayout()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x5

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/flybird/APPullRefreshView;->mEnablePull:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/flybird/APPullRefreshView;->mFlinger:Lcom/flybird/APPullRefreshView$Flinger;

    invoke-virtual {v2}, Lcom/flybird/APPullRefreshView$Flinger;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x106

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x206

    if-ne v3, v4, :cond_4

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lez v3, :cond_4

    iget-byte v3, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-ne v3, v5, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    if-le v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/flybird/APPullRefreshView;->release(I)V

    goto :goto_0

    :cond_3
    iget-byte v3, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eq v3, v5, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/flybird/APPullRefreshView;->release(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/flybird/APPullRefreshView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-byte v4, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eqz v4, :cond_6

    iget-byte v4, p0, Lcom/flybird/APPullRefreshView;->mState:B

    if-eq v4, v5, :cond_6

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_6
    if-nez v3, :cond_7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public getRefreshListener()Lcom/flybird/APPullRefreshView$RefreshListener;
    .locals 1

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-byte v4, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v6, 0x5

    if-ne v4, v6, :cond_3

    const/4 v4, 0x0

    instance-of v0, v1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v5, v2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    iget v3, p0, Lcom/flybird/APPullRefreshView;->mMaxMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    :cond_0
    :goto_2
    const/4 v0, 0x2

    :goto_3
    invoke-virtual {p0}, Lcom/flybird/APPullRefreshView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v6, v0, Landroid/widget/AdapterView;

    if-eqz v6, :cond_6

    check-cast v0, Landroid/widget/AdapterView;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v5, v2, v3, p4, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p4, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    invoke-interface {v0}, Lcom/flybird/APPullRefreshView$RefreshListener;->canRefresh()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v0, v2, Landroid/widget/AdapterView;

    if-nez v0, :cond_b

    invoke-virtual {p0, v5}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_b

    :goto_1
    instance-of v0, v1, Landroid/widget/AdapterView;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_4

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_5

    cmpl-float v0, p4, v6

    if-gtz v0, :cond_6

    :cond_5
    invoke-virtual {p0, v5}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_7

    cmpl-float v0, p4, v6

    if-lez v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    iget-byte v0, p0, Lcom/flybird/APPullRefreshView;->mState:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    :cond_8
    move v0, v3

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/flybird/APPullRefreshView;->mLastY:I

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_a

    iget v0, p0, Lcom/flybird/APPullRefreshView;->mLastY:I

    div-int/lit8 v0, v0, 0x2

    :cond_a
    invoke-direct {p0, v0, v5}, Lcom/flybird/APPullRefreshView;->moveDown(IZ)Z

    move-result v0

    neg-float v1, p4

    float-to-int v1, v1

    iput v1, p0, Lcom/flybird/APPullRefreshView;->mLastY:I

    goto/16 :goto_0

    :cond_b
    move-object v1, v2

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshFinished()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/flybird/APPullRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/FBOverView;->onFinish()V

    iget-object v1, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/alipay/birdnest/api/FBOverView;->setState(B)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x6

    iput-byte v1, p0, Lcom/flybird/APPullRefreshView;->mState:B

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/flybird/APPullRefreshView;->release(I)V

    :goto_0
    return-void

    :cond_0
    iput-byte v3, p0, Lcom/flybird/APPullRefreshView;->mState:B

    goto :goto_0
.end method

.method public setEnablePull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/APPullRefreshView;->mEnablePull:Z

    return-void
.end method

.method public setRefreshListener(Lcom/flybird/APPullRefreshView$RefreshListener;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/APPullRefreshView;->mOverView:Lcom/alipay/birdnest/api/FBOverView;

    invoke-virtual {p0, v0}, Lcom/flybird/APPullRefreshView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/flybird/APPullRefreshView;->mRefreshListener:Lcom/flybird/APPullRefreshView$RefreshListener;

    invoke-direct {p0}, Lcom/flybird/APPullRefreshView;->initListener()V

    return-void
.end method
