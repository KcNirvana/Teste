.class Lcom/miui/payment/data/source/TransactionRepository$7;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->queryTransactionsWithRx(II)Lio/reactivex/Observable;
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
        "Ljava/util/List",
        "<",
        "Lcom/miui/payment/data/TransactionItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/data/source/TransactionRepository;

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput p2, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->val$limit:I

    iput p3, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$7;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget v1, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->val$limit:I

    iget v2, p0, Lcom/miui/payment/data/source/TransactionRepository$7;->val$offset:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/payment/data/source/TransactionRepository;->queryTransactionItems(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
