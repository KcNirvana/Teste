.class Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;
.super Ljava/lang/Object;
.source "StockListLayoutContainer.java"

# interfaces
.implements Lcom/miui/personalassistant/stock/home/StockItemViewHolder$DragItemViewClickListener;


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

    iput-object p1, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startDragging(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer$3;->this$0:Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;->access$400(Lcom/miui/personalassistant/stock/home/StockListLayoutContainer;)Lmiui/widget/DynamicListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/widget/DynamicListView;->startDragging(I)V

    return-void
.end method
