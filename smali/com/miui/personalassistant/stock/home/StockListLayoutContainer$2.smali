.class Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;
.super Ljava/lang/Object;
.source "StockListLayoutContainer.java"

# interfaces
.implements Lmiui/widget/DynamicListView$RearrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "StockListLayoutContainer"

    const-string/jumbo v1, "onDragEnd(), drag from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v3}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$200(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v4}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$300(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$000(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lcom/miui/personalassistant/stock/home/StocksAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$200(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v2}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$300(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->updateStocksSort(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$400(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lmiui/widget/DynamicListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onDragStart()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$202(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$302(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$400(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lmiui/widget/DynamicListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/DynamicListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public onOrderChanged(II)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$000(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lcom/miui/personalassistant/stock/home/StocksAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->swapElements(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$200(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$202(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$2;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0, p2}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$302(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;I)I

    return-void
.end method
