.class public Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
.super Lcom/miui/payment/data/source/db/QueryBuilder;
.source "TransactionQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/QueryBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public equalToAmount(D)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 1

    const-string/jumbo v0, "amount"

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;D)V

    return-object p0
.end method

.method public equalToCategory(I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->inCategoies([I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    return-object p0
.end method

.method public equalToCreateSource(I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 4

    const-string/jumbo v0, "create_source"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToCurrencyCode(Ljava/lang/String;)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 1

    const-string/jumbo v0, "currency_code"

    invoke-virtual {p0, v0, p1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equalToDeleted(Z)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const-string/jumbo v2, "deleted"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public equalToId(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 1

    const-string/jumbo v0, "_id"

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToMethodCode(I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 4

    const-string/jumbo v0, "method_code"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToTranactionType(I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 4

    const-string/jumbo v0, "transaction_type"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToTransactionId(Ljava/lang/String;)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 1

    const-string/jumbo v0, "transaction_type"

    invoke-virtual {p0, v0, p1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equalToTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 1

    const-string/jumbo v0, "transaction_time"

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public greaterThanOrEqualToTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "transaction_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereGreaterThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public greaterThanOrEqualToTransactionTimeEdit(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "transaction_time_edit"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereGreaterThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public greaterThanTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "transaction_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereGreaterThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public inCategoies([I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 5

    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const-string/jumbo v4, "category_edit"

    invoke-virtual {p0, v3, v4, v1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereInOrNotIn(ZLjava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public lessThanOrEqualToTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "transaction_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereLessThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public lessThanTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "transaction_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereLessThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public lessThanTransactionTimeEdit(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "transaction_time_edit"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereLessThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public notInCategoies([I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 5

    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const-string/jumbo v4, "category"

    invoke-virtual {p0, v3, v4, v2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->whereInOrNotIn(ZLjava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method
