.class public Lcom/miui/applicationlock/b;
.super Lcom/miui/common/expandableview/d;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private aex:Ljava/util/List;

.field private final aey:Landroid/content/res/Resources;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/applicationlock/b;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/b;->aey:Landroid/content/res/Resources;

    return-void
.end method

.method private aks()V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeO()Lcom/miui/applicationlock/utils/HeaderType;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v3

    move v3, v5

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeO()Lcom/miui/applicationlock/utils/HeaderType;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v7, Lcom/miui/applicationlock/utils/HeaderType;->abr:Lcom/miui/applicationlock/utils/HeaderType;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/miui/applicationlock/b;->aey:Landroid/content/res/Resources;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const v8, 0x7f0c0044

    invoke-virtual {v6, v8, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/applicationlock/utils/j;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/miui/applicationlock/b;->aey:Landroid/content/res/Resources;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const v8, 0x7f0c0045

    invoke-virtual {v6, v8, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/applicationlock/utils/j;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method akt(Lcom/miui/applicationlock/utils/c;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "security"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {p1, p2}, Lcom/miui/applicationlock/utils/c;->aed(Z)V

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/c;->adZ()I

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lmiui/security/SecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    invoke-direct {p0}, Lcom/miui/applicationlock/b;->aks()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/b;->notifyDataSetChanged()V

    return-void
.end method

.method public aku(Ljava/util/List;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/b;->aks()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/b;->notifyDataSetChanged()V

    return-void
.end method

.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Lcom/miui/applicationlock/utils/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    return-object v0
.end method

.method public bridge synthetic getItem(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/b;->getItem(II)Lcom/miui/applicationlock/utils/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/b;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/applicationlock/d;

    invoke-direct {v1, p0, v3}, Lcom/miui/applicationlock/d;-><init>(Lcom/miui/applicationlock/b;Lcom/miui/applicationlock/d;)V

    const v0, 0x7f0a00a8

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/applicationlock/d;->aeA:Landroid/widget/ImageView;

    const v0, 0x7f0a00a9

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/applicationlock/d;->aeB:Landroid/widget/TextView;

    const v0, 0x7f0a00ab

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/applicationlock/d;->aeC:Landroid/widget/TextView;

    const v0, 0x7f0a00aa

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/applicationlock/d;->aeE:Landroid/widget/TextView;

    const v0, 0x7f0a00ac

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/applicationlock/d;->aeD:Lmiui/widget/SlidingButton;

    iget-object v0, v1, Lcom/miui/applicationlock/d;->aeD:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->aeN()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeB:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adX()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeC:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeE:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adY()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/miui/applicationlock/d;->aeD:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adZ()I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "pkg_icon_xspace://"

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeA:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :goto_2
    iget-object v2, v1, Lcom/miui/applicationlock/d;->aeD:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adY()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/miui/applicationlock/d;->aeE:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/miui/applicationlock/d;->aeE:Landroid/widget/TextView;

    const v2, 0x7f020334

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/miui/applicationlock/d;->aeE:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-object p3

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/d;

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeC:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/applicationlock/b;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0707ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "pkg_icon://"

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/applicationlock/d;->aeA:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_2
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/b;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030136

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/applicationlock/c;

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/c;-><init>(Lcom/miui/applicationlock/b;Lcom/miui/applicationlock/c;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/applicationlock/c;->akw(Lcom/miui/applicationlock/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/b;->aex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/j;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/j;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/miui/applicationlock/c;->akv(Lcom/miui/applicationlock/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/c;

    move-object v1, v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {p0, v0, p2}, Lcom/miui/applicationlock/b;->akt(Lcom/miui/applicationlock/utils/c;Z)V

    return-void
.end method
