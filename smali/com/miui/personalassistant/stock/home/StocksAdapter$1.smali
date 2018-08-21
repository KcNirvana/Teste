.class Lcom/miui/personalassistant/stock/home/StocksAdapter$1;
.super Ljava/lang/Object;
.source "StocksAdapter.java"

# interfaces
.implements Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/home/StocksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/StocksAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->access$000(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->access$100(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->access$100(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->access$100(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StocksAdapter$1;->this$0:Lcom/miui/personalassistant/stock/home/StocksAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->access$000(Lcom/miui/personalassistant/stock/home/StocksAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/model/Stock;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateStock(Lcom/miui/personalassistant/stock/model/Stock;Z)V

    :cond_0
    return-void
.end method
