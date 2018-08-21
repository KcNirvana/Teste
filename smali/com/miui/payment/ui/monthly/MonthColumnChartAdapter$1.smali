.class Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;
.super Ljava/lang/Object;
.source "MonthColumnChartAdapter.java"

# interfaces
.implements Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;->this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 3

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;->this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-static {v2}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->access$000(Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;)Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;->this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-virtual {v2}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->getItemCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;->this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    iget-object v2, v2, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mTransactionsTotalList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v2}, Lcom/miui/payment/data/TransactionTotal;->getDate()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;->this$0:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-static {v2}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->access$000(Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;)Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;->onMonthFocusChanged(J)V

    :cond_0
    return-void
.end method
