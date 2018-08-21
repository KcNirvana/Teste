.class Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;
.super Ljava/lang/Object;
.source "MonthPresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadMonthCategoryDetail()V
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
        "Lcom/miui/payment/data/TransactionTotal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$600(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;->accept(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method
