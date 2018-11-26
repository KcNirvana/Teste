.class public Lcom/miui/optimizemanage/optimizeresult/i;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field summaryView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;

.field wJ:Landroid/widget/Button;

.field wK:Landroid/widget/ImageView;

.field wL:Landroid/widget/ImageView;

.field wM:Landroid/widget/ImageView;

.field wN:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->summaryView:Landroid/widget/TextView;

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wJ:Landroid/widget/Button;

    const v0, 0x7f0a02d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wK:Landroid/widget/ImageView;

    const v0, 0x7f0a02d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wL:Landroid/widget/ImageView;

    const v0, 0x7f0a02d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wM:Landroid/widget/ImageView;

    const v0, 0x7f0a02d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wN:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/h;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wJ:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->getButton()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->yn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wK:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wK:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->yo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wL:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->yp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wM:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wM:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/h;->yq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wN:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wN:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wJ:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wK:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wL:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wM:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/i;->wN:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method
