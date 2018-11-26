.class public Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


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

    iput-object p3, p0, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/g;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/g;-><init>(Lcom/miui/powercenter/deepsave/datamodel/g;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/g;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/g;->title:Landroid/widget/TextView;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/g;->aMS:Landroid/widget/TextView;

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/g;->aMR:Landroid/widget/TextView;

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;->aZy(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/g;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/g;

    goto :goto_0
.end method

.method protected aZy(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/g;)V
    .locals 2

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/g;->icon:Landroid/widget/ImageView;

    const v1, 0x7f02021b

    invoke-static {v0, v1}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/g;->title:Landroid/widget/TextView;

    const v1, 0x7f07048e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/g;->aMS:Landroid/widget/TextView;

    const v1, 0x7f07048f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/g;->aMR:Landroid/widget/TextView;

    const v1, 0x7f07048d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/q;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/q;-><init>(Lcom/miui/powercenter/deepsave/datamodel/PowerSaveModeModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/g;->aMS:Landroid/widget/TextView;

    const v1, 0x7f070490

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011c

    return v0
.end method
