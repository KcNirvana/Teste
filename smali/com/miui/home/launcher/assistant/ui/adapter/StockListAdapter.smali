.class public Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StockListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StockListAdapter"


# instance fields
.field private mColorSchema:I

.field private mContext:Landroid/content/Context;

.field private mOnItemClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

.field private mStockInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mOnItemClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mColorSchema:I

    return v0
.end method

.method private isLast(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mStockInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mStockInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mStockInfos:Ljava/util/List;

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

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b04006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->isLast(I)Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mColorSchema:I

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mContext:Landroid/content/Context;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->bindView(IZLcom/miui/home/launcher/assistant/module/model/StockInfo;ILandroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mOnItemClickListener:Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->setItemClickListener(Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;

    goto :goto_0
.end method

.method public notifyChange()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getColorSchema(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mColorSchema:I

    const-string/jumbo v0, "StockListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyChange(), mColorSchema:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mColorSchema:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->mStockInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->notifyChange()V

    return-void
.end method
