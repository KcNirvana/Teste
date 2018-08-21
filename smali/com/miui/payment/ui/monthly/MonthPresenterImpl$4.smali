.class Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

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

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "MonthPresenterImpl"

    const-string/jumbo v1, "load month statement failed"

    invoke-static {v0, p1, v1}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;->this$0:Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->access$600(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method
