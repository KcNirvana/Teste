.class public interface abstract Lcom/miui/payment/data/source/TransactionDataSource;
.super Ljava/lang/Object;
.source "TransactionDataSource.java"


# virtual methods
.method public abstract deleteAllTransactionItems()Z
.end method

.method public abstract deleteTransactionItem(J)Z
.end method

.method public abstract deleteTransactionItems(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract queryAllMonthAmountTotal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDayTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
.end method

.method public abstract queryMonthStatement(J)Lcom/miui/payment/data/TransactionTotal;
.end method

.method public abstract queryMonthTransactionByCategory(J[I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
.end method

.method public abstract queryNewestTransactionItem()Lcom/miui/payment/data/TransactionItem;
.end method

.method public abstract queryTransactionItem(J)Lcom/miui/payment/data/TransactionItem;
.end method

.method public abstract queryTransactionItems(DJJ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTransactionItems(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J
.end method

.method public abstract updateTransactionItem(JILjava/lang/String;)Z
.end method
