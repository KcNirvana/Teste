.class public Lcom/miui/video/common/library/widget/UIOkCancelBar;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIOkCancelBar.java"


# instance fields
.field private vCancel:Landroid/widget/TextView;

.field private vLine:Landroid/view/View;

.field private vOk:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/common/library/R$layout;->ui_okcancel_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->inflateView(I)V

    sget v0, Lcom/miui/video/common/library/R$id;->v_ok:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/library/R$id;->v_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vLine:Landroid/view/View;

    sget v0, Lcom/miui/video/common/library/R$id;->v_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    return-void
.end method

.method public setCancelBackgroundDrawableRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCancelColorRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setCancelEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setLineRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setOkBackgroundDrawableRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOkColorRes(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/UIOkCancelBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setOkEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setViews(IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-lez p2, :cond_1

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vOk:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/common/library/widget/UIOkCancelBar;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
