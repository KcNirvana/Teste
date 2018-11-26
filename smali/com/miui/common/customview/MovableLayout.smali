.class public Lcom/miui/common/customview/MovableLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private ayJ:I

.field private ayK:Landroid/view/View;

.field private ayL:Landroid/view/View;

.field private ayM:Z

.field private ayN:I

.field private ayO:I

.field private ayP:I

.field private ayQ:Lcom/miui/common/customview/e;

.field private ayR:I

.field private ayS:Landroid/support/v4/widget/ViewDragHelper;

.field private ayT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/common/customview/MovableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/common/customview/MovableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/miui/common/customview/MovableLayout;->ayJ:I

    iput v2, p0, Lcom/miui/common/customview/MovableLayout;->ayR:I

    iput v2, p0, Lcom/miui/common/customview/MovableLayout;->ayN:I

    iput v2, p0, Lcom/miui/common/customview/MovableLayout;->ayT:I

    sget-object v0, Lcom/miui/securitycenter/d;->MovableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/MovableLayout;->ayN:I

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    iget v2, p0, Lcom/miui/common/customview/MovableLayout;->ayN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/common/customview/MovableLayout;->ayP:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Lcom/miui/common/customview/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/common/customview/d;-><init>(Lcom/miui/common/customview/MovableLayout;Lcom/miui/common/customview/d;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    return-void
.end method

.method private aFR()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    return v0
.end method

.method private aFS()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayP:I

    return v0
.end method

.method private aFT()V
    .locals 1

    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/MovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayL:Landroid/view/View;

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/MovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    return-void
.end method

.method private aFU()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayT:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayT:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aFV(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayR:I

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayR:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    iget-object v2, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/miui/common/customview/e;->onScroll(IF)V

    :cond_0
    return-void
.end method

.method private aGb()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aFS()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    invoke-interface {v0}, Lcom/miui/common/customview/e;->onContentScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic aGc(Lcom/miui/common/customview/MovableLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    return-object v0
.end method

.method static synthetic aGd(Lcom/miui/common/customview/MovableLayout;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    return v0
.end method

.method static synthetic aGe(Lcom/miui/common/customview/MovableLayout;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayR:I

    return v0
.end method

.method static synthetic aGf(Lcom/miui/common/customview/MovableLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic aGg(Lcom/miui/common/customview/MovableLayout;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayT:I

    return v0
.end method

.method static synthetic aGh(Lcom/miui/common/customview/MovableLayout;I)I
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/MovableLayout;->ayT:I

    return p1
.end method

.method static synthetic aGi(Lcom/miui/common/customview/MovableLayout;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aFR()I

    move-result v0

    return v0
.end method

.method static synthetic aGj(Lcom/miui/common/customview/MovableLayout;)I
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aFS()I

    move-result v0

    return v0
.end method

.method static synthetic aGk(Lcom/miui/common/customview/MovableLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/MovableLayout;->aFV(I)V

    return-void
.end method


# virtual methods
.method protected aFW()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    invoke-interface {v0}, Lcom/miui/common/customview/e;->onStartScroll()V

    :cond_0
    return-void
.end method

.method protected aFX()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    invoke-interface {v0}, Lcom/miui/common/customview/e;->onStopScroll()V

    :cond_0
    return-void
.end method

.method public aFY(I)V
    .locals 2

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    iget v1, p0, Lcom/miui/common/customview/MovableLayout;->ayN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/MovableLayout;->ayP:I

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->invalidate()V

    return-void
.end method

.method public aFZ(Lcom/miui/common/customview/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/MovableLayout;->ayQ:Lcom/miui/common/customview/e;

    return-void
.end method

.method public aGa(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayN:I

    :goto_0
    iput v0, p0, Lcom/miui/common/customview/MovableLayout;->ayR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method layoutChildren(IIIIZ)V
    .locals 13

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingLeft()I

    move-result v4

    sub-int v0, p3, p1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingTop()I

    move-result v6

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingBottom()I

    move-result v1

    sub-int v7, v0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/miui/common/customview/MovableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getLayoutDirection()I

    move-result v11

    invoke-static {v1, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    and-int/lit8 v12, v1, 0x70

    and-int/lit8 v1, v11, 0x7

    sparse-switch v1, :sswitch_data_0

    :cond_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    :goto_1
    sparse-switch v12, :sswitch_data_1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    :goto_2
    iget-object v11, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    if-ne v8, v11, :cond_1

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayJ:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayJ:I

    :cond_1
    :goto_3
    add-int/2addr v9, v1

    add-int/2addr v10, v0

    invoke-virtual {v8, v1, v0, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :sswitch_0
    sub-int v1, v5, v4

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v11

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    goto :goto_1

    :sswitch_1
    if-nez p5, :cond_0

    sub-int v1, v5, v9

    iget v11, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v11

    goto :goto_1

    :sswitch_2
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    goto :goto_2

    :sswitch_3
    sub-int v11, v7, v6

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v6

    iget v12, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    goto :goto_2

    :sswitch_4
    sub-int v11, v7, v10

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v0, v11, v0

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/miui/common/customview/MovableLayout;->ayM:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/miui/common/customview/MovableLayout;->ayM:Z

    goto :goto_3

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayL:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Lcom/miui/common/customview/MovableLayout;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    add-int/2addr v0, p5

    iget v2, p0, Lcom/miui/common/customview/MovableLayout;->ayO:I

    invoke-static {p4, v0, v2}, Lcom/miui/common/customview/MovableLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayK:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Lcom/miui/common/customview/MovableLayout;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/common/customview/MovableLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/common/customview/MovableLayout;->ayP:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v0}, Lcom/miui/common/customview/MovableLayout;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aFT()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aGb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/common/customview/MovableLayout;->layoutChildren(IIIIZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/MovableLayout;->aFU()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/MovableLayout;->ayS:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
