.class public Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;
.super Lcom/ali/user/mobile/ui/widget/APListView;
.source "APPinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->a:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->d:I

    iget v3, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->e:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v5, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_3

    sub-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v3, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->d:I

    iget v4, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->e:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->c:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Lcom/ali/user/mobile/ui/widget/APListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->d:I

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->e:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->d:I

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->e:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->a:Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView$a;

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APPinnedHeaderListView;->requestLayout()V

    return-void
.end method
