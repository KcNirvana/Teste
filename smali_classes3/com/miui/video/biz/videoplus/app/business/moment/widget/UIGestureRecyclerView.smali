.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;
.super Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;
.source "UIGestureRecyclerView.java"


# static fields
.field public static final ACTION_ADD_VALUE:Ljava/lang/String; = "action_add_value"

.field public static final ACTION_CHANGE_VALUE:Ljava/lang/String; = "action_change_value"

.field public static final ACTION_REMOVE_VALUE:Ljava/lang/String; = "action_remove_value"


# instance fields
.field private final DEFAULT_DISTANCEN:I

.field private mEnableGesture:Z

.field private mHasNotified:Z

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/framework/impl/IActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedIntercept:Z

.field private mOriginDis:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mEnableGesture:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->DEFAULT_DISTANCEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mEnableGesture:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->DEFAULT_DISTANCEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mEnableGesture:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->DEFAULT_DISTANCEN:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private findItemData(FF)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;
    .locals 7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    add-int/lit8 v5, v2, 0x1

    const/4 v6, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->isInView(FFLandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-ne v1, v6, :cond_3

    return-object v3

    :cond_3
    if-ltz v1, :cond_7

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge v1, p2, :cond_7

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    instance-of v0, p2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->isInViewX(FLandroid/view/View;)Z

    move-result v1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_5

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    return-object p1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-object v3
.end method

.method private getActionListener()Lcom/miui/video/framework/impl/IActionListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/framework/impl/IActionListener;

    return-object v0
.end method

.method private getCenter(FF)F
    .locals 2

    cmpl-float v0, p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    sub-float/2addr p1, p2

    div-float/2addr p1, v1

    add-float/2addr p2, p1

    return p2

    :cond_0
    sub-float/2addr p2, p1

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    return p1
.end method

.method private handleData(Ljava/lang/Object;Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;)V
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isInView(FFLandroid/view/View;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    int-to-float v1, v2

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    int-to-float p1, p3

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInViewX(FLandroid/view/View;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private judgeGesture(Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    sub-float v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v6, 0x2

    if-eq p1, v6, :cond_0

    goto :goto_0

    :cond_0
    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mOriginDis:F

    sub-float v4, p1, v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    invoke-direct {p0, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getCenter(FF)F

    move-result p1

    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getCenter(FF)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->findItemData(FF)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    move-result-object p1

    const-string v0, "action_zoom_in"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->notifyListener(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mOriginDis:F

    sub-float/2addr p1, v4

    const/high16 v4, -0x3d380000    # -100.0f

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2

    invoke-direct {p0, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getCenter(FF)F

    move-result p1

    invoke-direct {p0, v0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getCenter(FF)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->findItemData(FF)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    move-result-object p1

    const-string v0, "action_zoom_out"

    invoke-direct {p0, v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->notifyListener(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyListener(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mHasNotified:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mHasNotified:Z

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getActionListener()Lcom/miui/video/framework/impl/IActionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mEnableGesture:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mHasNotified:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v3, 0x105

    if-ne v0, v3, :cond_2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v0, v0, v0

    mul-float v3, v3, v3

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mOriginDis:F

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-le v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mNeedIntercept:Z

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setGestureMode(Z)V

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mNeedIntercept:Z

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/app/widget/GestureViewPager;->setGestureMode(Z)V

    :goto_1
    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mEnableGesture:Z

    return-void
.end method

.method protected getUIFactory()Lcom/miui/video/biz/videoplus/app/factory/UIPlusFactory;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;)V

    return-object v0
.end method

.method public hasScrollToTop()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mNeedIntercept:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mNeedIntercept:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->judgeGesture(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;

    const-string v1, "action_add_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->handleData(Ljava/lang/Object;Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_0
    const-string v1, "action_remove_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->handleData(Ljava/lang/Object;Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_1
    const-string v1, "action_change_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p3, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->handleData(Ljava/lang/Object;Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/uiadapter/UIRecyclerAdapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIStickyRecyclerView;->scrollToTop()V

    return-void
.end method

.method public setActionListener(Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UIGestureRecyclerView;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
