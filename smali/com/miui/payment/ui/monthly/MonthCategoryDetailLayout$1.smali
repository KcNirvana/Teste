.class Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;
.super Ljava/lang/Object;
.source "MonthCategoryDetailLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-static {v3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->access$000(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-static {v3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->access$000(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/payment/data/TransactionTotal;->getCategoryTotalList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getCategory()I

    move-result v0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-virtual {v3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "date"

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-static {v4}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->access$000(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/payment/data/TransactionTotal;->getDate()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v3, "category"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;->this$0:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-virtual {v3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
