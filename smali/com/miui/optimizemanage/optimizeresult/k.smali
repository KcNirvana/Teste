.class public Lcom/miui/optimizemanage/optimizeresult/k;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field summaryView:Landroid/widget/TextView;

.field titleView:Landroid/widget/TextView;

.field wW:Landroid/widget/Button;

.field wX:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wX:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->summaryView:Landroid/widget/TextView;

    const v0, 0x7f0a0185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wW:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/j;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wX:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0200b2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wW:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f0901e9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yz(Lcom/miui/optimizemanage/optimizeresult/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/miui/optimizemanage/optimizeresult/j;->color:I

    :goto_0
    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wW:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yy(Lcom/miui/optimizemanage/optimizeresult/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yw(Lcom/miui/optimizemanage/optimizeresult/j;)I

    move-result v0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yx(Lcom/miui/optimizemanage/optimizeresult/j;)I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wW:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/k;->wW:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yC(Lcom/miui/optimizemanage/optimizeresult/j;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yA(Lcom/miui/optimizemanage/optimizeresult/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yB(Lcom/miui/optimizemanage/optimizeresult/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/optimizemanage/optimizeresult/j;->yD(Lcom/miui/optimizemanage/optimizeresult/j;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/j;->yA(Lcom/miui/optimizemanage/optimizeresult/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Av(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/miui/optimizemanage/optimizeresult/j;->yE(Lcom/miui/optimizemanage/optimizeresult/j;Z)Z

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f080084

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const v0, 0x7f0202db

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
