.class public Lcom/miui/optimizemanage/view/CircleLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private xH:Lcom/miui/optimizemanage/view/OMCircleView;

.field private xI:Lcom/miui/optimizemanage/view/OMCircleView;

.field private xJ:Lcom/miui/optimizemanage/view/OMCircleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/view/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizemanage/view/CircleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f2

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/CircleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/OMCircleView;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xH:Lcom/miui/optimizemanage/view/OMCircleView;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xH:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v0, v4}, Lcom/miui/optimizemanage/view/OMCircleView;->setType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v0, v7, [I

    const v2, 0x7f0800fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v4

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v3

    const v2, 0x7f0800ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v5

    const v2, 0x7f080100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v6

    iget-object v2, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xH:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v2, v0}, Lcom/miui/optimizemanage/view/OMCircleView;->zU([I)V

    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/CircleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/OMCircleView;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xI:Lcom/miui/optimizemanage/view/OMCircleView;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xI:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v0, v3}, Lcom/miui/optimizemanage/view/OMCircleView;->setType(I)V

    const v0, 0x7f0a02c3

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/CircleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/view/OMCircleView;

    iput-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xJ:Lcom/miui/optimizemanage/view/OMCircleView;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xJ:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v0, v5}, Lcom/miui/optimizemanage/view/OMCircleView;->setType(I)V

    new-array v0, v7, [I

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v4

    const v2, 0x7f080102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v3

    const v2, 0x7f080103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v5

    const v2, 0x7f080104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v6

    iget-object v1, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xJ:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v1, v0}, Lcom/miui/optimizemanage/view/OMCircleView;->zU([I)V

    return-void
.end method


# virtual methods
.method public zS(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xH:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->zV(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xI:Lcom/miui/optimizemanage/view/OMCircleView;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/view/OMCircleView;->zV(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/CircleLayout;->xJ:Lcom/miui/optimizemanage/view/OMCircleView;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->zV(F)V

    return-void
.end method
