.class public Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;
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

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/e;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/e;-><init>(Lcom/miui/powercenter/deepsave/datamodel/e;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/e;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/e;->title:Landroid/widget/TextView;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/e;->aML:Landroid/widget/TextView;

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/e;->aMK:Landroid/widget/TextView;

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;->aZs(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/e;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/e;

    goto :goto_0
.end method

.method protected aZs(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/e;)V
    .locals 2

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/e;->icon:Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/e;->title:Landroid/widget/TextView;

    const v1, 0x7f0704be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/e;->aML:Landroid/widget/TextView;

    const v1, 0x7f07051e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/e;->aMK:Landroid/widget/TextView;

    const v1, 0x7f07048d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/o;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/o;-><init>(Lcom/miui/powercenter/deepsave/datamodel/AutoTaskSettingModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011c

    return v0
.end method
