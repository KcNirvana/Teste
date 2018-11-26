.class final Lcom/miui/gamebooster/ui/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic df:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ej(Landroid/widget/AbsListView;)V
    .locals 6

    const v5, 0x7f0a0408

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    iget v0, v0, Lcom/miui/gamebooster/ui/c;->aL:I

    if-ge v1, v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iX()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->iY()V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    iget v0, v0, Lcom/miui/gamebooster/ui/c;->Y:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    iput p2, v0, Lcom/miui/gamebooster/ui/c;->Y:I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    iput p3, v0, Lcom/miui/gamebooster/ui/c;->aL:I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/N;->df:Lcom/miui/gamebooster/ui/c;

    iput p4, v0, Lcom/miui/gamebooster/ui/c;->aK:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/N;->ej(Landroid/widget/AbsListView;)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/N;->ej(Landroid/widget/AbsListView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
