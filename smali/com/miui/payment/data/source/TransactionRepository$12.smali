.class Lcom/miui/payment/data/source/TransactionRepository$12;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->queryMonthStatementWithRx(J)Lio/reactivex/Observable;
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
        "Lcom/miui/payment/data/TransactionTotal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/data/source/TransactionRepository;

.field final synthetic val$monthDate:J


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$12;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iput-wide p2, p0, Lcom/miui/payment/data/source/TransactionRepository$12;->val$monthDate:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/miui/payment/data/TransactionTotal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository$12;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    iget-wide v2, p0, Lcom/miui/payment/data/source/TransactionRepository$12;->val$monthDate:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthStatement(J)Lcom/miui/payment/data/TransactionTotal;

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

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$12;->call()Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method
