.class public Lcom/miui/appmanager/model/o;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private aQr:Landroid/view/View;

.field private aQs:Landroid/widget/ImageView;

.field private aQt:Landroid/view/View;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/o;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/o;->aQs:Landroid/widget/ImageView;

    const v0, 0x7f0a00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/o;->aQt:Landroid/view/View;

    const v0, 0x7f0a00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/o;->aQr:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQr:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/appmanager/h;->blT()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQr:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQr:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/n;

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/appmanager/model/n;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQs:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQs:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/appmanager/model/n;->getIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQt:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/miui/appmanager/model/n;->bhF(Lcom/miui/appmanager/model/n;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/model/o;->aQt:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/appmanager/model/n;->bhF(Lcom/miui/appmanager/model/n;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
