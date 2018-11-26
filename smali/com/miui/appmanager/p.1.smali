.class public Lcom/miui/appmanager/p;
.super Landroid/widget/ArrayAdapter;
.source ""


# instance fields
.field private aUv:Ljava/util/ArrayList;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/p;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/miui/appmanager/p;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/appmanager/p;->aUv:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/p;->aUv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/p;->aUv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/k;->getLayoutIdType()I

    move-result v0

    return v0
.end method

.method public getModelList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/p;->aUv:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/p;->aUv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/p;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/appmanager/model/k;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/appmanager/model/k;->createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1, p2, v0, p1}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/model/f;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lcom/miui/appmanager/model/k;->getLayoutTypeCount()I

    move-result v0

    return v0
.end method
