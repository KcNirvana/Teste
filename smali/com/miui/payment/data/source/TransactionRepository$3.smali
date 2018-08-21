.class Lcom/miui/payment/data/source/TransactionRepository$3;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionsDataWithRx(JILjava/lang/String;)Lio/reactivex/Observable;
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

.field final synthetic val$category:I

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$transactionId:J


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;JILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-wide p2, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$transactionId:J

    iput p4, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$category:I

    iput-object p5, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-wide v2, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$transactionId:J

    iget v1, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$category:I

    iget-object v4, p0, Lcom/miui/payment/data/source/TransactionRepository$3;->val$comment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionItem(JILjava/lang/String;)Z

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

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
