.class Lcom/miui/personalassistant/stock/search/SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcom/miui/personalassistant/stock/search/SearchItemViewHolder$ItemViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/search/SearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddClick(Landroid/view/View;Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-virtual {p2}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$300(Lcom/miui/personalassistant/stock/search/SearchAdapter;I)V

    return-void
.end method

.method public onClick(Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;)V
    .locals 4

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$000(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$100(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/personalassistant/stock/search/SearchItemViewHolder;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$100(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$100(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/stock/model/SearchStockModel;

    invoke-virtual {v3}, Lcom/miui/personalassistant/stock/model/SearchStockModel;->getStock()Lcom/miui/personalassistant/stock/model/Stock;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$200(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/Stock;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/personalassistant/stock/hybrid/HybridIntent;->startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchAdapter$1;->this$0:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/search/SearchAdapter;->access$200(Lcom/miui/personalassistant/stock/search/SearchAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    move-object v0, v3

    goto :goto_1
.end method
