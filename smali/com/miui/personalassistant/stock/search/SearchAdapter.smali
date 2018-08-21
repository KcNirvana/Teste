.class public Lcom/miui/personalassistant/stock/search/SearchAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SearchAdapter"


# instance fields
.field private mAddedCount:I

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchStocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/SearchStockModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;-><init>(Lcom/miui/personalassistant/stock/search/SearchAdapter;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mReference:Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/stock/search/SearchAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->updateStockItem(I)V

    return-void
.end method

.method private getSearchStocks(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/SearchStockModel;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getStocks()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    iput v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mAddedCount:I

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v2, Lcom/miui/personalassistant/stock/model/SearchStockModel;

    invoke-direct {v2}, Lcom/miui/personalassistant/stock/model/SearchStockModel;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->setStock(Lcom/miui/personalassistant/stock/model/Stock;)V

    if-eqz v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->setAdded(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_3

    :cond_3
    const-string/jumbo v3, "getSearchStocks"

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/stock/log/Logger;->pref(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getStockItem(I)Lcom/miui/personalassistant/stock/model/SearchStockModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/model/SearchStockModel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStockItem(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mAddedCount:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mReference:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0b0408

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/stock/model/SearchStockModel;

    invoke-virtual {v1, v4}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->setAdded(Z)V

    iget v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mAddedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mAddedCount:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->getStock()Lcom/miui/personalassistant/stock/model/Stock;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateStock(Lcom/miui/personalassistant/stock/model/Stock;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "SearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateStockItem(), invalid postion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    instance-of v1, p1, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->getStockItem(I)Lcom/miui/personalassistant/stock/model/SearchStockModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->bindItemView(Lcom/miui/personalassistant/stock/model/SearchStockModel;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b0400ef

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mItemViewClickListener:Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;)V

    return-object v1
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mEmptyView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setStocks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->getSearchStocks(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mSearchStocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mEmptyView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mEmptyView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter;->mEmptyView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
