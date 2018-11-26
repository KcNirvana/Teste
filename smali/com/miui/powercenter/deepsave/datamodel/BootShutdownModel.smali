.class public Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;
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

    new-instance v1, Lcom/miui/powercenter/deepsave/datamodel/d;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/deepsave/datamodel/d;-><init>(Lcom/miui/powercenter/deepsave/datamodel/d;)V

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/d;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/d;->title:Landroid/widget/TextView;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/d;->aMJ:Landroid/widget/TextView;

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/powercenter/deepsave/datamodel/d;->aMI:Landroid/widget/TextView;

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;->aZr(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/d;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/datamodel/d;

    goto :goto_0
.end method

.method protected aZr(Landroid/view/View;Lcom/miui/powercenter/deepsave/datamodel/d;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/d;->icon:Landroid/widget/ImageView;

    invoke-static {p3}, Lcom/miui/powercenter/a/e;->bbl(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/d;->title:Landroid/widget/TextView;

    const v1, 0x7f070418

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/d;->aMJ:Landroid/widget/TextView;

    const v1, 0x7f07049d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p2, Lcom/miui/powercenter/deepsave/datamodel/d;->aMI:Landroid/widget/TextView;

    const v1, 0x7f07048d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/miui/powercenter/deepsave/datamodel/n;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/datamodel/n;-><init>(Lcom/miui/powercenter/deepsave/datamodel/BootShutdownModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03011c

    return v0
.end method
