.class public Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
.super Ljava/lang/Object;
.source "OnTransitionTextListener.java"

# interfaces
.implements Lcom/miui/video/common/library/widget/scroll/indicator/Indicator$OnTransitionListener;


# instance fields
.field private dFontFize:F

.field private gradient:Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;

.field private isBold:Z

.field private isPxSize:Z

.field private selectSize:F

.field private unSelectSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->selectSize:F

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->dFontFize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->selectSize:F

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    iput v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->dFontFize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    invoke-virtual {p0, p3, p4}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    return-void
.end method


# virtual methods
.method public getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 0

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public onTransition(Landroid/view/View;IF)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->gradient:Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->gradient:Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p3

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->selectSize:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget-boolean p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    iget v1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->dFontFize:F

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    iget v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->dFontFize:F

    mul-float v0, v0, p3

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isBold:Z

    return-void
.end method

.method public final setBold(Z)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isBold:Z

    return-object p0
.end method

.method public final setColor(II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 2

    new-instance v0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;

    const/16 v1, 0x64

    invoke-direct {v0, p2, p1, v1}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;-><init>(III)V

    iput-object v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->gradient:Lcom/miui/video/common/library/widget/scroll/indicator/transition/ColorGradient;

    return-object p0
.end method

.method public final setColorId(Landroid/content/Context;II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    return-object p0
.end method

.method public final setSize(FF)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->selectSize:F

    iput p2, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->dFontFize:F

    return-object p0
.end method

.method public final setSizeId(Landroid/content/Context;II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    return-object p0
.end method

.method public final setValueFromRes(Landroid/content/Context;IIII)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setColorId(Landroid/content/Context;II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    invoke-virtual {p0, p1, p4, p5}, Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;->setSizeId(Landroid/content/Context;II)Lcom/miui/video/common/library/widget/scroll/indicator/transition/OnTransitionTextListener;

    return-object p0
.end method
