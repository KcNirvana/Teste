.class public Lcom/miui/applicationlock/e;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private aeN:Ljava/util/List;

.field public aeO:[Z

.field private aeP:Lcom/miui/applicationlock/f;

.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/applicationlock/e;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/applicationlock/e;->context:Landroid/content/Context;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miui/applicationlock/e;->aeO:[Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/miui/applicationlock/utils/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/e;->getItem(I)Lcom/miui/applicationlock/utils/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/e;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/applicationlock/f;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/f;-><init>(Lcom/miui/applicationlock/e;)V

    iput-object v0, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    iget-object v1, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    const v0, 0x7f0a00a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/applicationlock/f;->aeS:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    const v0, 0x7f0a00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/applicationlock/f;->aeQ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    const v0, 0x7f0a00a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/miui/applicationlock/f;->aeR:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adZ()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "pkg_icon_xspace://"

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    iget-object v2, v2, Lcom/miui/applicationlock/f;->aeS:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :goto_1
    iget-object v1, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    iget-object v1, v1, Lcom/miui/applicationlock/f;->aeQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->adW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    iget-object v1, v1, Lcom/miui/applicationlock/f;->aeR:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/f;

    iput-object v0, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "pkg_icon://"

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/e;->aeP:Lcom/miui/applicationlock/f;

    iget-object v2, v2, Lcom/miui/applicationlock/f;->aeS:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_1
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/applicationlock/e;->aeN:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/e;->notifyDataSetChanged()V

    return-void
.end method
