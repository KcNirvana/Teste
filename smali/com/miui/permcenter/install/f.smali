.class public Lcom/miui/permcenter/install/f;
.super Lcom/miui/common/expandableview/d;
.source ""


# instance fields
.field private QB:Lcom/miui/permcenter/install/a;

.field private QC:Ljava/util/List;

.field private QD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/f;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/f;->QB:Lcom/miui/permcenter/install/a;

    return-void
.end method


# virtual methods
.method public RZ(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/f;->QD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/c;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/c;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030139

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/permcenter/install/g;

    invoke-direct {v1}, Lcom/miui/permcenter/install/g;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/permcenter/install/g;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/permcenter/install/g;->title:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, v1, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setClickable(Z)V

    iget-object v0, v1, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/permcenter/install/f;->QD:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/c;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/i;

    iget-object v3, p0, Lcom/miui/permcenter/install/f;->QB:Lcom/miui/permcenter/install/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/permcenter/install/a;->QO(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "file://"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/miui/permcenter/install/g;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    const v6, 0x1080093

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v3, v1, Lcom/miui/permcenter/install/g;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, v0}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->Sg()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/g;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030136

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/permcenter/install/h;

    invoke-direct {v1, v2}, Lcom/miui/permcenter/install/h;-><init>(Lcom/miui/permcenter/install/h;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/permcenter/install/h;->Sb(Lcom/miui/permcenter/install/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/permcenter/install/h;->Sa(Lcom/miui/permcenter/install/h;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/c;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/h;

    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/install/f;->QC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/permcenter/install/f;->notifyDataSetChanged()V

    return-void
.end method
