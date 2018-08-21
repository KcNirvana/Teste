.class Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;
.super Ljava/lang/Object;
.source "StockItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/home/StockItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/home/StockItemViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;->this$0:Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;->this$0:Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->access$000(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;->this$0:Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->access$000(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$1;->this$0:Lcom/miui/personalassistant/stock/home/StockItemViewHolder;

    invoke-static {v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder;->access$100(Lcom/miui/personalassistant/stock/home/StockItemViewHolder;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/stock/home/StockItemViewHolder$OnItemClickListener;->onDelete(I)V

    :cond_0
    return-void
.end method
