.class Lcom/miui/common/customview/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private ayt:I

.field private ayu:F

.field final synthetic ayv:Lcom/miui/common/customview/AutoPasteListView;

.field private top:I


# direct methods
.method private constructor <init>(Lcom/miui/common/customview/AutoPasteListView;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/customview/a;->top:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/common/customview/a;->ayu:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/customview/AutoPasteListView;Lcom/miui/common/customview/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/customview/a;-><init>(Lcom/miui/common/customview/AutoPasteListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    const/4 v3, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v0

    if-ge v0, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v1, p3, p2

    if-ne v1, p4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v1}, Lcom/miui/common/customview/AutoPasteListView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0, v3}, Lcom/miui/common/customview/AutoPasteListView;->aFJ(Lcom/miui/common/customview/AutoPasteListView;Z)Z

    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/a;->ayt:I

    iput v2, p0, Lcom/miui/common/customview/a;->top:I

    iget v0, p0, Lcom/miui/common/customview/a;->ayt:I

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFC(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFB(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :goto_1
    iget v0, p0, Lcom/miui/common/customview/a;->ayt:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFE(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget v3, p0, Lcom/miui/common/customview/a;->top:I

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFE(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v4}, Lcom/miui/common/customview/AutoPasteListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v0, v4

    sub-int v0, v3, v0

    iput v0, p0, Lcom/miui/common/customview/a;->top:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->aFJ(Lcom/miui/common/customview/AutoPasteListView;Z)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/common/customview/a;->top:I

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v1, v2}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v2}, Lcom/miui/common/customview/AutoPasteListView;->aFG(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/common/customview/a;->top:I

    iget v0, p0, Lcom/miui/common/customview/a;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFB(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    iget v1, p0, Lcom/miui/common/customview/a;->ayu:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/miui/common/customview/a;->ayu:F

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFI(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/b;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFI(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/common/customview/b;->ei(F)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFH(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFH(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lcom/miui/common/customview/a;->ayt:I

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFC(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/miui/common/customview/a;->ayu:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_3

    iput v5, p0, Lcom/miui/common/customview/a;->ayu:F

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFI(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFI(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/b;

    move-result-object v0

    iget v1, p0, Lcom/miui/common/customview/a;->ayu:F

    invoke-interface {v0, v1}, Lcom/miui/common/customview/b;->ei(F)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0}, Lcom/miui/common/customview/AutoPasteListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFC(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v0

    if-gt v4, v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFB(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v4, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFE(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFE(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v5}, Lcom/miui/common/customview/AutoPasteListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v0, v5

    sub-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, v2}, Lcom/miui/common/customview/AutoPasteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFG(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v1}, Lcom/miui/common/customview/AutoPasteListView;->aFB(Lcom/miui/common/customview/AutoPasteListView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v2}, Lcom/miui/common/customview/AutoPasteListView;->aFF(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x68

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v1, v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v3}, Lcom/miui/common/customview/AutoPasteListView;->aFD(Lcom/miui/common/customview/AutoPasteListView;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFF(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFH(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/a;->ayv:Lcom/miui/common/customview/AutoPasteListView;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView;->aFH(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_4
    return-void

    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method
