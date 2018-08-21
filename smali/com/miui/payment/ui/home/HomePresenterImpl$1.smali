.class Lcom/miui/payment/ui/home/HomePresenterImpl$1;
.super Ljava/lang/Object;
.source "HomePresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/home/HomePresenterImpl;->loadRecords(II)V
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
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$1;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

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

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl$1;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$1;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-static {v0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->access$000(Lcom/miui/payment/ui/home/HomePresenterImpl;Ljava/util/List;)V

    return-void
.end method
