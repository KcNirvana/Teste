.class public Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/i;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/i;-><init>(Lcom/miui/powercenter/deepsave/datamodel/i;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/i;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/i;->title:Landroid/widget/TextView;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/i;->aMW:Landroid/widget/TextView;

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/i;->aMV:Landroid/widget/TextView;

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;->aZA(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/i;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/i;

    goto :goto_0
.end method

.method protected aZA(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/i;)V
    .locals 2

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/i;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0200f8

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/i;->title:Landroid/widget/TextView;

    const v1, 0x7f070503

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/i;->aMW:Landroid/widget/TextView;

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/i;->aMV:Landroid/widget/TextView;

    const v1, 0x7f07048d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/s;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/s;-><init>(Lcom/miui/powercenter/deepsave/datamodel/ExtremePowerSaveModeModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011c

    return v0
.end method
