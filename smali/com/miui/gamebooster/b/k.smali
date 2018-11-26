.class public Lcom/miui/gamebooster/b/k;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private rV:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/b/k;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/b/k;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Lcom/miui/gamebooster/model/a;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/a;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/b/k;->getItem(I)Lcom/miui/gamebooster/model/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ad

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/gamebooster/b/l;

    invoke-direct {v1}, Lcom/miui/gamebooster/b/l;-><init>()V

    const v0, 0x7f0a0205

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/gamebooster/b/l;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a0204

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/miui/gamebooster/b/l;->rW:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    iget-object v4, v1, Lcom/miui/gamebooster/b/l;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->my()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/b/k;->rV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v0

    sget-object v4, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/a/a;->eQ()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tJ(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/miui/gamebooster/b/l;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/gamebooster/b/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/b/l;

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/miui/gamebooster/c/b;->tK(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_1
.end method
