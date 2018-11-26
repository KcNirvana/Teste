.class public Lcom/miui/antivirus/ui/c;
.super Lcom/miui/common/expandableview/d;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeaders:Ljava/util/List;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/c;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/antivirus/ui/c;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic awq(Lcom/miui/antivirus/ui/c;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->arJ()Ljava/util/ArrayList;

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

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->arJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/i;

    iget-object v2, v0, Lcom/miui/antivirus/model/i;->amb:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->arJ()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/i;

    iget-boolean v3, v0, Lcom/miui/antivirus/model/i;->amc:Z

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030151

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/antivirus/ui/d;

    invoke-direct {v1}, Lcom/miui/antivirus/ui/d;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/antivirus/ui/d;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/antivirus/ui/d;->title:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/antivirus/ui/d;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, v1, Lcom/miui/antivirus/ui/d;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v4, p0, Lcom/miui/antivirus/ui/c;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/miui/antivirus/ui/l;

    invoke-direct {v1, p0, v0, v3}, Lcom/miui/antivirus/ui/l;-><init>(Lcom/miui/antivirus/ui/c;Lcom/miui/antivirus/ui/d;Z)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/miui/antivirus/ui/d;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v4, v5}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v1, v0, Lcom/miui/antivirus/ui/d;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antivirus/ui/c;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antivirus/ui/d;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/antivirus/ui/d;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/d;

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030150

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/antivirus/ui/e;

    invoke-direct {v1, v2}, Lcom/miui/antivirus/ui/e;-><init>(Lcom/miui/antivirus/ui/e;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/antivirus/ui/e;->aws(Lcom/miui/antivirus/ui/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/antivirus/ui/e;->awr(Lcom/miui/antivirus/ui/e;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/e;

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/c;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/c;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/c;->notifyDataSetChanged()V

    return-void
.end method
