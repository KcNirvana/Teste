.class Lcom/miui/antivirus/whitelist/f;
.super Lcom/miui/common/expandableview/d;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private auk:Ljava/util/Set;

.field private aul:Lcom/miui/common/d/f;

.field private aum:Lcom/miui/antivirus/whitelist/j;

.field private aun:Ljava/util/Map;

.field final synthetic auo:Lcom/miui/antivirus/whitelist/WhiteListActivity;

.field private mHeaders:Ljava/util/List;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Landroid/content/Context;Lcom/miui/common/d/f;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/f;->auo:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Lcom/miui/antivirus/whitelist/j;

    invoke-direct {v0}, Lcom/miui/antivirus/whitelist/j;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aum:Lcom/miui/antivirus/whitelist/j;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/f;->auk:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/antivirus/whitelist/f;->aul:Lcom/miui/common/d/f;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private aAE()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->auo:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07073c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07073d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/whitelist/l;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/whitelist/l;-><init>(Lcom/miui/antivirus/whitelist/f;)V

    const v2, 0x7f07073e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public aAF()Z
    .locals 2

    const-string/jumbo v0, "key_first_enter_virus_whitelist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aAG(Z)V
    .locals 1

    const-string/jumbo v0, "key_first_enter_virus_whitelist"

    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public aAH(Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->auk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/i;

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->aum:Lcom/miui/antivirus/whitelist/j;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->auo:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAz(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAj(Z)V

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/f;->aAF()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/f;->aAE()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/f;->aAG(Z)V

    :cond_3
    return-void
.end method

.method public getCountForSection(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->aun:Ljava/util/Map;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/k;

    const-string/jumbo v1, "itemModel"

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/k;->aAS()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030188

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/whitelist/WhiteListItemView;

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/f;->aul:Lcom/miui/common/d/f;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->aAL(Lcom/miui/common/d/f;)V

    invoke-virtual {v1, p0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/antivirus/whitelist/WhiteListItemView;->aAM(Lcom/miui/antivirus/whitelist/k;)V

    return-object v1

    :cond_0
    check-cast p3, Lcom/miui/antivirus/whitelist/WhiteListItemView;

    move-object v1, p3

    goto :goto_0
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/i;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030187

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/f;->aul:Lcom/miui/common/d/f;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;->aAO(Lcom/miui/common/d/f;)V

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/whitelist/WhiteListHeaderView;->aAP(Lcom/miui/antivirus/whitelist/i;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/k;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->auk:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v0, p2}, Lcom/miui/antivirus/whitelist/k;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/f;->auo:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAz(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->auk:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAi(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/whitelist/f;->auk:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
