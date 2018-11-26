.class public Lcom/miui/gamebooster/b/i;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Lcom/miui/gamebooster/view/c;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private rI:I

.field private rJ:Landroid/graphics/drawable/Drawable;

.field private rK:Z

.field private rL:I

.field private rM:Ljava/util/List;

.field private rN:Ljava/util/ArrayList;

.field private rO:Ljava/lang/ref/WeakReference;

.field private rP:Landroid/graphics/drawable/Drawable;

.field private rQ:I

.field private rR:I

.field private rS:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/b/i;->rL:I

    iput-object v1, p0, Lcom/miui/gamebooster/b/i;->rN:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/gamebooster/b/i;->rN:Ljava/util/ArrayList;

    const-string/jumbo v0, "xunyou_support"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/m;->fQ(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->rS:Ljava/util/ArrayList;

    const-string/jumbo v0, "gamebooster"

    const-string/jumbo v1, "xunyousupportlist"

    iget-object v2, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/m;->fP(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->rS:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->rP:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rP:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/b/i;->rP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->rJ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/b/i;->rI:I

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/b/i;->rQ:I

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/b/i;->rR:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/gamebooster/model/e;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/b/i;->getItem(I)Lcom/miui/gamebooster/model/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f02014d

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300c2

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0205

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a024a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a024b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rJ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0708fd

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget v0, p0, Lcom/miui/gamebooster/b/i;->rL:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-object v4

    :cond_2
    iget-object v3, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/e;

    iget-boolean v5, p0, Lcom/miui/gamebooster/b/i;->rK:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/gamebooster/b/i;->rS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/e;->mS()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v1, "xunyouSupportGame"

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/e;->mS()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v3}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/e;->mT()Lcom/miui/gamebooster/gamead/InternalAdWall;

    move-result-object v5

    if-nez v1, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/miui/gamebooster/gamead/InternalAdWall;->me()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/miui/common/b/q;->azS:Lcom/nostra13/universalimageloader/core/n;

    iget-object v6, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v1, v0, v3, v6}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Lcom/miui/gamebooster/gamead/InternalAdWall;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v5

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_5

    const-string/jumbo v5, "pkg_icon_xspace://"

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    iget-object v6, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v1, v0, v5, v6}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {v3}, Lcom/miui/gamebooster/model/e;->mS()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "pkg_icon://"

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/gamebooster/b/i;->rN:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/miui/gamebooster/b/i;->rN:Ljava/util/ArrayList;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/miui/gamebooster/b/i;->rI:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget v1, p0, Lcom/miui/gamebooster/b/i;->rR:I

    iget v6, p0, Lcom/miui/gamebooster/b/i;->rQ:I

    invoke-virtual {v2, v8, v1, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rP:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_6
    sget-object v1, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    iget-object v6, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v0, v1, v6}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public qS(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public qT(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/b/i;->rL:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    return-void
.end method

.method public qU()V
    .locals 2

    const-string/jumbo v0, "tab1_gamebooster"

    const-string/jumbo v1, "game_sequence"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/b/i;->rM:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    return-void
.end method

.method public ts()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rS:Ljava/util/ArrayList;

    return-object v0
.end method

.method public tt(Landroid/content/pm/PackageManager;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/b/i;->rO:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public tu(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/b/i;->rK:Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/miui/gamebooster/b/i;->rK:Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    return-void
.end method

.method public tv(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/i;->rN:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    return-void
.end method
