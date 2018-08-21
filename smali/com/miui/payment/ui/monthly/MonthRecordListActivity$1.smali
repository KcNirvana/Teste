.class Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;
.super Ljava/lang/Object;
.source "MonthRecordListActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->loadRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/miui/payment/data/TransactionItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$002(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$100(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$200(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;->this$0:Lcom/miui/payment/ui/monthly/MonthRecordListActivity;

    invoke-static {v1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->access$000(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->onNewRecordList(Ljava/util/List;)V

    return-void
.end method
