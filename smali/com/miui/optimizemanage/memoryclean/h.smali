.class public Lcom/miui/optimizemanage/memoryclean/h;
.super Lcom/miui/common/expandableview/d;
.source ""


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private wi:Ljava/util/List;

.field private wj:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/p;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/p;-><init>(Lcom/miui/optimizemanage/memoryclean/h;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wj:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/q;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/q;-><init>(Lcom/miui/optimizemanage/memoryclean/h;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->mClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/h;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    return-void
.end method

.method static synthetic xC(Lcom/miui/optimizemanage/memoryclean/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/i;

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/i;

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    mul-int/lit16 v0, p1, 0x3e8

    add-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->mContext:Landroid/content/Context;

    const v1, 0x7f0300f6

    invoke-static {v0, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/optimizemanage/memoryclean/j;

    invoke-direct {v1, v5}, Lcom/miui/optimizemanage/memoryclean/j;-><init>(Lcom/miui/optimizemanage/memoryclean/j;)V

    const v0, 0x7f0a0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/j;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/j;->title:Landroid/widget/TextView;

    const v0, 0x7f0a01dd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/j;->wm:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/j;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/memoryclean/i;

    iget-object v1, v1, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/memoryclean/m;

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/j;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/optimizemanage/memoryclean/h;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/j;->icon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    invoke-static {v2, v3, v4}, Lcom/miui/optimizemanage/a/a;->Ae(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v5}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    iget-boolean v3, v1, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/optimizemanage/memoryclean/h;->wj:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/j;->wn:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    return-object p3
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->mContext:Landroid/content/Context;

    const v1, 0x7f0300f5

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/optimizemanage/memoryclean/k;

    invoke-direct {v1, v2}, Lcom/miui/optimizemanage/memoryclean/k;-><init>(Lcom/miui/optimizemanage/memoryclean/k;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/k;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/k;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/memoryclean/i;

    iget v1, v1, Lcom/miui/optimizemanage/memoryclean/i;->wk:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/k;->title:Landroid/widget/TextView;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/memoryclean/i;

    iget v1, v1, Lcom/miui/optimizemanage/memoryclean/i;->wk:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/k;->title:Landroid/widget/TextView;

    const v1, 0x7f07040b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/h;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/miui/optimizemanage/memoryclean/i;

    invoke-direct {v1, v3}, Lcom/miui/optimizemanage/memoryclean/i;-><init>(Lcom/miui/optimizemanage/memoryclean/i;)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/miui/optimizemanage/memoryclean/i;->wk:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    new-instance v2, Lcom/miui/optimizemanage/memoryclean/i;

    invoke-direct {v2, v3}, Lcom/miui/optimizemanage/memoryclean/i;-><init>(Lcom/miui/optimizemanage/memoryclean/i;)V

    const/4 v0, 0x2

    iput v0, v2, Lcom/miui/optimizemanage/memoryclean/i;->wk:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/m;

    iget-boolean v4, v0, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, v2, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v2, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public xB(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/h;->wi:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/i;

    iget-object v0, v0, Lcom/miui/optimizemanage/memoryclean/i;->wl:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/m;

    iget-object v3, v0, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    if-ne v3, p2, :cond_0

    iput-boolean p3, v0, Lcom/miui/optimizemanage/memoryclean/m;->wo:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method
