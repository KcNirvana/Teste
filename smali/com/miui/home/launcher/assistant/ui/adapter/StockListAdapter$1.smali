.class Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;
.super Ljava/lang/Object;
.source "StockListAdapter.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder$ItemViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockDetailActicvity(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "style_app"

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/StockListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_stock"

    const-string/jumbo v2, "14"

    const-string/jumbo v3, "StockCardView"

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/adapter/StockViewHolder;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v4, "style_web"

    goto :goto_0
.end method
