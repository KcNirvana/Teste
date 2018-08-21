.class Lcom/miui/payment/ui/home/HomePresenterImpl$5;
.super Ljava/lang/Object;
.source "HomePresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/home/HomePresenterImpl;->loadCurrentMonthTotal()V
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
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$5;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1
    .param p1    # Lcom/miui/payment/data/TransactionTotal;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$5;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->access$200(Lcom/miui/payment/ui/home/HomePresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

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

    check-cast p1, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl$5;->accept(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method
