.class Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;
.super Ljava/lang/Object;
.source "MonthPresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadAllMonthAccountTotal()V
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
        "Lcom/miui/payment/data/TransactionTotal;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$000(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$100(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$200(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$300(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$402(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Z)Z

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$500(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    return-void
.end method
