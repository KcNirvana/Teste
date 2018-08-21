.class public interface abstract Lcom/miui/payment/ui/monthly/MonthViewInteraction;
.super Ljava/lang/Object;
.source "MonthViewInteraction.java"

# interfaces
.implements Lcom/miui/payment/ui/base/IViewInteraction;


# virtual methods
.method public abstract bindStatementCategoryDetail(JLcom/miui/payment/data/TransactionTotal;)V
.end method

.method public abstract bindStatementColumnChart(IDLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindStatementHeader(JLcom/miui/payment/data/TransactionTotal;)V
.end method
