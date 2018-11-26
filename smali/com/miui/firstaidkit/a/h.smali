.class public Lcom/miui/firstaidkit/a/h;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field tD:Landroid/widget/LinearLayout;

.field tE:Landroid/widget/LinearLayout;

.field tF:Landroid/widget/LinearLayout;

.field tG:Landroid/widget/LinearLayout;

.field tH:Landroid/widget/LinearLayout;

.field tI:Landroid/view/View;

.field tJ:Landroid/view/View;

.field tK:Landroid/view/View;

.field tL:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/firstaidkit/a/h;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/a/h;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tD:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0198

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tE:Landroid/widget/LinearLayout;

    const v0, 0x7f0a019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tF:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tG:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tH:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tI:Landroid/view/View;

    const v0, 0x7f0a019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tJ:Landroid/view/View;

    const v0, 0x7f0a019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tK:Landroid/view/View;

    const v0, 0x7f0a01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/h;->tL:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/firstaidkit/a/g;

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tD:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vy(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tI:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vy(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tE:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vv(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tJ:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vv(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tF:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vw(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tK:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vw(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tG:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vu(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/firstaidkit/a/h;->tL:Landroid/view/View;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vu(Lcom/miui/firstaidkit/a/g;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/firstaidkit/a/h;->tH:Landroid/widget/LinearLayout;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/g;->vx(Lcom/miui/firstaidkit/a/g;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_8
.end method
