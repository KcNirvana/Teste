.class Lcom/miui/antivirus/activity/g;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private asF:Ljava/util/Set;

.field private asG:Ljava/util/List;

.field final synthetic asH:Lcom/miui/antivirus/activity/SignExceptionActivity;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/SignExceptionActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/activity/g;->asH:Lcom/miui/antivirus/activity/SignExceptionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/g;->asF:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/g;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic azg(Lcom/miui/antivirus/activity/g;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asF:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public azf()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asF:Ljava/util/Set;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

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
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f050027

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/antivirus/activity/h;

    invoke-direct {v1}, Lcom/miui/antivirus/activity/h;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/antivirus/activity/h;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/antivirus/activity/h;->title:Landroid/widget/TextView;

    const v0, 0x7f0a02be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/miui/antivirus/activity/h;->asI:Landroid/widget/CheckBox;

    iget-object v0, v1, Lcom/miui/antivirus/activity/h;->asI:Landroid/widget/CheckBox;

    new-instance v2, Lcom/miui/antivirus/activity/S;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/S;-><init>(Lcom/miui/antivirus/activity/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg_icon://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/antivirus/activity/h;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v2, v1, Lcom/miui/antivirus/activity/h;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/b;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/antivirus/activity/h;->asI:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/miui/antivirus/activity/h;->asI:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/h;

    move-object v1, v0

    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asF:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/g;->asG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
