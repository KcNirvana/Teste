.class public Lcom/miui/common/customview/AutoPasteListView;
.super Landroid/widget/ListView;
.source ""


# instance fields
.field private ayc:F

.field private ayd:I

.field private aye:I

.field private ayf:Lcom/miui/common/customview/a;

.field private ayg:Z

.field private ayh:Z

.field private ayi:Ljava/util/List;

.field private ayj:F

.field private ayk:I

.field private ayl:I

.field private aym:I

.field private ayn:I

.field private ayo:I

.field private ayp:Landroid/view/VelocityTracker;

.field private ayq:Landroid/widget/AbsListView$OnScrollListener;

.field private ayr:Lcom/miui/common/customview/b;

.field private ays:Z

.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/common/customview/AutoPasteListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayc:F

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayk:I

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayh:Z

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ays:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    new-instance v0, Lcom/miui/common/customview/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/common/customview/a;-><init>(Lcom/miui/common/customview/AutoPasteListView;Lcom/miui/common/customview/a;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayf:Lcom/miui/common/customview/a;

    new-instance v0, Lcom/miui/common/customview/f;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/f;-><init>(Lcom/miui/common/customview/AutoPasteListView;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayc:F

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayk:I

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayh:Z

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ays:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    new-instance v0, Lcom/miui/common/customview/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/common/customview/a;-><init>(Lcom/miui/common/customview/AutoPasteListView;Lcom/miui/common/customview/a;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayf:Lcom/miui/common/customview/a;

    new-instance v0, Lcom/miui/common/customview/f;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/f;-><init>(Lcom/miui/common/customview/AutoPasteListView;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->init()V

    return-void
.end method

.method static synthetic aFB(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    return v0
.end method

.method static synthetic aFC(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    return v0
.end method

.method static synthetic aFD(Lcom/miui/common/customview/AutoPasteListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayg:Z

    return v0
.end method

.method static synthetic aFE(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    return-object v0
.end method

.method static synthetic aFF(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aFG(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayk:I

    return v0
.end method

.method static synthetic aFH(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayq:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic aFI(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayr:Lcom/miui/common/customview/b;

    return-object v0
.end method

.method static synthetic aFJ(Lcom/miui/common/customview/AutoPasteListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayg:Z

    return p1
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->aym:I

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayn:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayf:Lcom/miui/common/customview/a;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public aFA(Lcom/miui/common/customview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayr:Lcom/miui/common/customview/b;

    return-void
.end method

.method public aFx(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayc:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/common/customview/AutoPasteListView;->smoothScrollBy(II)V

    return-void
.end method

.method public aFy(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    return-void
.end method

.method public aFz(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayl:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayh:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayj:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayo:I

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayk:I

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    :goto_0
    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const v10, 0x3ca3d70a    # 0.02f

    const/high16 v9, -0x31000000

    const v8, -0x3b448000    # -1500.0f

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ays:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/miui/common/customview/AutoPasteListView;->ayl:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayl:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iput-boolean v2, p0, Lcom/miui/common/customview/AutoPasteListView;->ayh:Z

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->aym:I

    int-to-float v1, v1

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayo:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getFirstVisiblePosition()I

    move-result v5

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    if-gt v5, v0, :cond_f

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    if-eqz v0, :cond_f

    move v1, v2

    move v3, v2

    :goto_1
    if-ge v1, v5, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayi:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoPasteListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v0, v6

    sub-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayk:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    cmpl-float v2, v4, v8

    if-lez v2, :cond_7

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->ayn:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v10

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    :goto_2
    const v2, 0x44bb8000    # 1500.0f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_a

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->ayn:I

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    const v5, 0x3f7ae148    # 0.98f

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    :goto_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->ayn:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->ayj:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v10

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v7, p0, Lcom/miui/common/customview/AutoPasteListView;->ayp:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_2

    :cond_7
    cmpl-float v2, v4, v9

    if-lez v2, :cond_8

    cmpg-float v2, v4, v8

    if-gez v2, :cond_8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_2

    :cond_8
    cmpg-float v2, v4, v9

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_3

    :cond_a
    const/high16 v2, 0x4f000000

    cmpg-float v2, v4, v2

    if-gez v2, :cond_b

    const v2, 0x44bb8000    # 1500.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_3

    :cond_b
    const/high16 v2, 0x4f000000

    cmpl-float v2, v4, v2

    goto :goto_3

    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_4

    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    const v4, 0x3f7ae148    # 0.98f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_4

    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->aFx(I)V

    goto :goto_4

    :cond_f
    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->aye:I

    if-gt v5, v0, :cond_5

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->ayd:I

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->ayq:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method
