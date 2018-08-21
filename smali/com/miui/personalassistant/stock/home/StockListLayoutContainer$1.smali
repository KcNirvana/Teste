.class Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;
.super Ljava/lang/Object;
.source "StockListLayoutContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->setup()V
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

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v1}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$000(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lcom/miui/personalassistant/stock/home/StocksAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/personalassistant/stock/home/StocksAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/stock/model/Stock;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$1;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$100(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;Lcom/miui/personalassistant/stock/model/Stock;)V

    return-void
.end method
