.class Lcom/miui/securityscan/ui/settings/a;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private Im:Ljava/util/Set;

.field private In:Ljava/util/List;

.field final synthetic Io:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/WhiteListActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/a;->Io:Lcom/miui/securityscan/ui/settings/WhiteListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->Im:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic HO(Lcom/miui/securityscan/ui/settings/a;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->Im:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public HN()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->Im:Ljava/util/Set;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ef

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/securityscan/ui/settings/b;

    invoke-direct {v1}, Lcom/miui/securityscan/ui/settings/b;-><init>()V

    const v0, 0x7f0a00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/securityscan/ui/settings/b;->title:Landroid/widget/TextView;

    const v0, 0x7f0a02be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/miui/securityscan/ui/settings/b;->Ip:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/miui/securityscan/ui/settings/b;->Ip:Landroid/widget/CheckBox;

    new-instance v2, Lcom/miui/securityscan/ui/settings/g;

    invoke-direct {v2, p0}, Lcom/miui/securityscan/ui/settings/g;-><init>(Lcom/miui/securityscan/ui/settings/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    iget-object v2, v1, Lcom/miui/securityscan/ui/settings/b;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/securityscan/ui/settings/b;->Ip:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/miui/securityscan/ui/settings/b;->Ip:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/settings/b;

    move-object v1, v0

    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->Im:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/settings/a;->In:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
