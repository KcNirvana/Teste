.class Lcom/miui/payment/data/source/TransactionRepository$8;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->queryMonthTransactionsByCategoryWithRx(J[I)Lio/reactivex/Observable;
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

.field final synthetic val$category:[I

.field final synthetic val$monthTime:J


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;J[I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-wide p2, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->val$monthTime:J

    iput-object p4, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->val$category:[I

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

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 4
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

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-wide v2, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->val$monthTime:J

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository$8;->val$category:[I

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthTransactionByCategory(J[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
