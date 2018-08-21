.class Lcom/miui/payment/data/source/TransactionRepository$1;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->saveTransactionsWithRx(Lcom/miui/payment/data/TransactionItem;)Lio/reactivex/Observable;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/data/source/TransactionRepository;

.field final synthetic val$recordItem:Lcom/miui/payment/data/TransactionItem;


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;Lcom/miui/payment/data/TransactionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$1;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-object p2, p0, Lcom/miui/payment/data/source/TransactionRepository$1;->val$recordItem:Lcom/miui/payment/data/TransactionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$1;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository$1;->val$recordItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, v1}, Lcom/miui/payment/data/source/TransactionRepository;->saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$1;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
