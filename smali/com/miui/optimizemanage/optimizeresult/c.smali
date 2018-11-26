.class public Lcom/miui/optimizemanage/optimizeresult/c;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field divider:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->divider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 8

    const v7, 0x7f0200a6

    const v6, 0x7f0200a4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xK(Lcom/miui/optimizemanage/optimizeresult/b;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/c;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    const v5, 0x7f0200b2

    invoke-static {v0, v3, v4, v5}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->title:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xP(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xO(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xL(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xN(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0200a3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/c;->divider:Landroid/view/View;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->divider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xM(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xJ(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Av(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/miui/optimizemanage/optimizeresult/b;->xQ(Lcom/miui/optimizemanage/optimizeresult/b;Z)Z

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xN(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0200ab

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xL(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xL(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xN(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xN(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/b;->xL(Lcom/miui/optimizemanage/optimizeresult/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/c;->divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
