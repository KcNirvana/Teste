.class public Lcom/miui/optimizemanage/optimizeresult/e;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field title:Landroid/widget/TextView;

.field wA:Landroid/widget/Button;

.field wB:Landroid/view/View;

.field wC:Landroid/widget/ImageView;

.field wD:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a02d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wC:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->title:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wD:Landroid/widget/TextView;

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    const v0, 0x7f0a00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wB:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 8

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yh(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v4

    if-eq v4, v0, :cond_0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yh(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    :cond_0
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yd(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wC:Landroid/widget/ImageView;

    sget-object v6, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    const v7, 0x7f0201ff

    invoke-static {v4, v5, v6, v7}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :goto_0
    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->title:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yi(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wB:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wB:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yf(Lcom/miui/optimizemanage/optimizeresult/d;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wB:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wD:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yg(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wD:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yh(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_7

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yb(Lcom/miui/optimizemanage/optimizeresult/d;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->xZ(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v0

    :goto_2
    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->xW(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yh(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->ya(Lcom/miui/optimizemanage/optimizeresult/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0901e9

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->xX(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v1

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->xY(Lcom/miui/optimizemanage/optimizeresult/d;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wA:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->ye(Lcom/miui/optimizemanage/optimizeresult/d;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yc(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Av(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/miui/optimizemanage/optimizeresult/d;->yj(Lcom/miui/optimizemanage/optimizeresult/d;Z)Z

    :cond_5
    return-void

    :cond_6
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/d;->yd(Lcom/miui/optimizemanage/optimizeresult/d;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/optimizemanage/optimizeresult/e;->wC:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Lcom/miui/optimizemanage/optimizeresult/d;->xT(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    const v0, 0x7f080084

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    const v0, 0x7f0202fb

    :goto_4
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    :cond_a
    const v0, 0x7f0202db

    goto :goto_4
.end method
