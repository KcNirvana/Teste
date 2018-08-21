.class public Lcom/miui/payment/data/source/db/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# instance fields
.field private mGroupBy:Ljava/lang/String;

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mQueryBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mLimit:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mOffset:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mGroupBy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mGroupBy:Ljava/lang/String;

    return-object v0
.end method

.method public getLimitAndOffset()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mLimit:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mOffset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mOffset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setGroupBy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mGroupBy:Ljava/lang/String;

    return-void
.end method

.method public setLimit(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mLimit:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mLimit:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOffset(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mOffset:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mOffset:Ljava/lang/String;

    goto :goto_0
.end method

.method public whereEqual(Ljava/lang/String;D)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whereEqual(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whereEqual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whereGreaterThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public whereInOrNotIn(ZLjava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public whereIsNull(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whereLessThanOrEqual(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/data/source/db/QueryBuilder;->mQueryBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
