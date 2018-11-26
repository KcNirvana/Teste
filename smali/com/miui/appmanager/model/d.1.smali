.class public Lcom/miui/appmanager/model/d;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private aPR:Landroid/widget/TextView;

.field private aPS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/d;->aPR:Landroid/widget/TextView;

    const v0, 0x7f0a00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/d;->aPS:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/c;

    iget-object v0, p0, Lcom/miui/appmanager/model/d;->aPR:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/d;->aPR:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/c;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/d;->aPS:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/appmanager/model/d;->aPS:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/c;->bgY()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/d;->aPS:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/appmanager/model/A;

    invoke-direct {v1, p0, p2}, Lcom/miui/appmanager/model/A;-><init>(Lcom/miui/appmanager/model/d;Lcom/miui/appmanager/model/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
