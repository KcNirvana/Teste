.class public Lcom/miui/firstaidkit/a/f;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private childViewCacheList:Ljava/util/List;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private tu:Ljava/lang/ref/WeakReference;

.field private tv:Landroid/widget/LinearLayout;

.field private tw:Landroid/widget/RelativeLayout;

.field private tx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->childViewCacheList:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->tu:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/a/f;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->tx:Landroid/widget/TextView;

    const v0, 0x7f0a01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->tw:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/f;->tv:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic vn(Lcom/miui/firstaidkit/a/f;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->tu:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic vo(Lcom/miui/firstaidkit/a/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 9

    const/16 v8, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/firstaidkit/a/d;

    invoke-static {v0}, Lcom/miui/firstaidkit/a/d;->vl(Lcom/miui/firstaidkit/a/d;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/miui/firstaidkit/a/f;->tx:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/miui/firstaidkit/a/d;->vm(Lcom/miui/firstaidkit/a/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->tw:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    iget-object v1, p0, Lcom/miui/firstaidkit/a/f;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/miui/firstaidkit/a/f;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/firstaidkit/a/e;

    :goto_2
    iget-object v5, v2, Lcom/miui/firstaidkit/a/e;->ts:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v2, Lcom/miui/firstaidkit/a/e;->tr:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_3

    iget-object v5, v2, Lcom/miui/firstaidkit/a/e;->tt:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_3
    iget-object v5, v2, Lcom/miui/firstaidkit/a/e;->tq:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getButtonTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Lcom/miui/firstaidkit/a/e;->tq:Landroid/widget/Button;

    new-instance v5, Lcom/miui/firstaidkit/a/j;

    invoke-direct {v5, p0, v0}, Lcom/miui/firstaidkit/a/j;-><init>(Lcom/miui/firstaidkit/a/f;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/miui/firstaidkit/a/k;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/firstaidkit/a/k;-><init>(Lcom/miui/firstaidkit/a/f;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->tv:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/firstaidkit/a/f;->tw:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/firstaidkit/a/f;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/firstaidkit/a/f;->tv:Landroid/widget/LinearLayout;

    const v5, 0x7f03008c

    invoke-virtual {v1, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v2, Lcom/miui/firstaidkit/a/e;

    invoke-direct {v2}, Lcom/miui/firstaidkit/a/e;-><init>()V

    const v1, 0x7f0a00c4

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/firstaidkit/a/e;->ts:Landroid/widget/TextView;

    const v1, 0x7f0a00c6

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/firstaidkit/a/e;->tr:Landroid/widget/TextView;

    const v1, 0x7f0a00c8

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/miui/firstaidkit/a/e;->tq:Landroid/widget/Button;

    const v1, 0x7f0a0193

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/firstaidkit/a/e;->tt:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a/f;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    goto/16 :goto_2

    :cond_3
    iget-object v5, v2, Lcom/miui/firstaidkit/a/e;->tt:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    return-void
.end method
