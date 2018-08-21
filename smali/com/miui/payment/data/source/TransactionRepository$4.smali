.class Lcom/miui/payment/data/source/TransactionRepository$4;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->deleteTransactionsWithRx(J)Lio/reactivex/Observable;
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

.field final synthetic val$transactionsId:J


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$4;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-wide p2, p0, Lcom/miui/payment/data/source/TransactionRepository$4;->val$transactionsId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$4;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-wide v2, p0, Lcom/miui/payment/data/source/TransactionRepository$4;->val$transactionsId:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/source/TransactionRepository;->deleteTransactionItem(J)Z

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

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
