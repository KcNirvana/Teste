.class public Lcom/miui/permcenter/autostart/f;
.super Lcom/miui/common/expandableview/d;
.source ""


# instance fields
.field private Oo:J

.field private mHeaders:Ljava/util/List;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/autostart/f;->mInflater:Landroid/view/LayoutInflater;

    iput-wide p2, p0, Lcom/miui/permcenter/autostart/f;->Oo:J

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->Ph()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030137

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/permcenter/autostart/g;

    invoke-direct {v1}, Lcom/miui/permcenter/autostart/g;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/permcenter/autostart/g;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/permcenter/autostart/g;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0281

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/permcenter/autostart/g;->Op:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, v1, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/permcenter/autostart/f;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->Ph()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/miui/permcenter/autostart/g;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v1, v2, Lcom/miui/permcenter/autostart/g;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/miui/permcenter/autostart/g;->Op:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Sw()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v4, p0, Lcom/miui/permcenter/autostart/f;->Oo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, v2, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, v0}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/miui/permcenter/autostart/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Sv()Z

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/g;

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030136

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/permcenter/autostart/h;

    invoke-direct {v1, v2}, Lcom/miui/permcenter/autostart/h;-><init>(Lcom/miui/permcenter/autostart/h;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/permcenter/autostart/h;->Pk(Lcom/miui/permcenter/autostart/h;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lcom/miui/permcenter/autostart/h;->Pj(Lcom/miui/permcenter/autostart/h;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/miui/permcenter/autostart/h;->Pj(Lcom/miui/permcenter/autostart/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/h;

    move-object v1, v0

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/autostart/f;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/permcenter/autostart/f;->notifyDataSetChanged()V

    return-void
.end method

.method public updateHeader(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/permcenter/autostart/h;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/permcenter/autostart/h;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/h;->Pj(Lcom/miui/permcenter/autostart/h;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/h;->Pj(Lcom/miui/permcenter/autostart/h;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->mHeaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/e;

    invoke-virtual {v0}, Lcom/miui/permcenter/autostart/e;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
