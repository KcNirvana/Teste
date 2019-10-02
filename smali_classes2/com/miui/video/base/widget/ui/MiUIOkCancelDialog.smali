.class public Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "MiUIOkCancelDialog.java"


# instance fields
.field private vCancel:Landroid/widget/TextView;

.field private vHorizontalLine:Landroid/view/View;

.field private vInfo:Landroid/widget/TextView;

.field private vOk:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;

.field private vVerticalLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Lcom/miui/video/base/R$layout;->local_miui_okcancel_dialog:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->inflateView(I)V

    sget v0, Lcom/miui/video/base/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/base/R$id;->v_horizontal_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vHorizontalLine:Landroid/view/View;

    sget v0, Lcom/miui/video/base/R$id;->v_info:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/base/R$id;->v_ok:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vOk:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/base/R$id;->v_vertical_line:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vVerticalLine:Landroid/view/View;

    sget v0, Lcom/miui/video/base/R$id;->v_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vCancel:Landroid/widget/TextView;

    return-void
.end method

.method public setViews(IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViews(Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vInfo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-lez p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vOk:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vOk:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vOk:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-lez p4, :cond_3

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-lez p3, :cond_4

    if-lez p4, :cond_4

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vVerticalLine:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vVerticalLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vOk:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/base/widget/ui/MiUIOkCancelDialog;->vCancel:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
