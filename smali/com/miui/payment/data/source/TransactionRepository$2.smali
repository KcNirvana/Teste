.class Lcom/miui/payment/data/source/TransactionRepository$2;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionsDataWithRx(Lcom/miui/payment/ui/edit/EditData;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/data/source/TransactionRepository;

.field final synthetic val$item:Lcom/miui/payment/ui/edit/EditData;


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;Lcom/miui/payment/ui/edit/EditData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$2;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-object p2, p0, Lcom/miui/payment/data/source/TransactionRepository$2;->val$item:Lcom/miui/payment/ui/edit/EditData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$2;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository$2;->val$item:Lcom/miui/payment/ui/edit/EditData;

    invoke-virtual {v0, v1}, Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionItem(Lcom/miui/payment/ui/edit/EditData;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
