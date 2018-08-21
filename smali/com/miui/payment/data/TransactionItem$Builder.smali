.class public Lcom/miui/payment/data/TransactionItem$Builder;
.super Ljava/lang/Object;
.source "TransactionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/data/TransactionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mTransactionsItem:Lcom/miui/payment/data/TransactionItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/payment/data/TransactionItem;

    invoke-direct {v0}, Lcom/miui/payment/data/TransactionItem;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/payment/data/TransactionItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    return-object v0
.end method

.method public setAmount(DLjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/TransactionItem;->setAmount(D)V

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p3}, Lcom/miui/payment/data/TransactionItem;->setCurrencyCode(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAmountEdit(D)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/TransactionItem;->setAmountEdit(D)V

    return-object p0
.end method

.method public setCategory(I)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setCategory(I)V

    return-object p0
.end method

.method public setCategoryEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setCategoryEdit(I)V

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setComment(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCreateSource(I)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setCreateSource(I)V

    return-object p0
.end method

.method public setDeleteState(ZJ)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setDeleted(Z)V

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p2, p3}, Lcom/miui/payment/data/TransactionItem;->setDeletedTime(J)V

    return-object p0
.end method

.method public setId(J)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/TransactionItem;->setId(J)V

    return-object p0
.end method

.method public setMethod(ILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setMethod(I)V

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p2}, Lcom/miui/payment/data/TransactionItem;->setMethodDesc(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMethodEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/TransactionItem;->setMethodEdit(I)V

    return-object p0
.end method

.method public setTransactionState(J)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionState(JILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    return-object p0
.end method

.method public setTransactionState(JILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/TransactionItem;->setTransactionTime(J)V

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p3}, Lcom/miui/payment/data/TransactionItem;->setTransactionType(I)V

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p4}, Lcom/miui/payment/data/TransactionItem;->setTransactionId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTransactionState(JLjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionState(JILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    return-object p0
.end method

.method public setTransactionTimeEdit(J)Lcom/miui/payment/data/TransactionItem$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionItem$Builder;->mTransactionsItem:Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/TransactionItem;->setTransactionTimeEdit(J)V

    return-object p0
.end method
