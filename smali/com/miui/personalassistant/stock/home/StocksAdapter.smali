.class public Lcom/miui/personalassistant/stock/home/StocksAdapter;
.super Landroid/widget/BaseAdapter;
.source "StocksAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

.field mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

.field private mStocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mIdMap:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;-><init>(Lcom/miui/personalassistant/stock/home/StocksAdapter;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getStocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->updateIdMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateIdMap()V
    .locals 4

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mIdMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b040113

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    invoke-direct {v0, p2}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->setDragItemClickListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mOnItemClickListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->setOnItemClickListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-virtual {v0, p1, v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->bindView(ILcom/miui/personalassistant/stock/model/Stock;)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b020310

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b02030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getStocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->updateIdMap()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mDragListener:Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;

    return-void
.end method

.method public swapElements(II)V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/model/Stock;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateStocksSort(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateStocksSort(Ljava/util/ArrayList;II)V

    return-void
.end method
