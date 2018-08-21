.class Lcom/miui/payment/data/source/TransactionRepository$10;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/data/source/TransactionRepository;->queryCurrentMonthTransactionsTotalWithRx()Lio/reactivex/Observable;
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


# direct methods
.method constructor <init>(Lcom/miui/payment/data/source/TransactionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository$10;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/payment/utils/DateUtil;->getMonthDate(J)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/payment/data/source/TransactionRepository$10;->this$0:Lcom/miui/payment/data/source/TransactionRepository;

    invoke-virtual {v2, v0, v1}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/payment/data/source/TransactionRepository$10;->call()Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method
