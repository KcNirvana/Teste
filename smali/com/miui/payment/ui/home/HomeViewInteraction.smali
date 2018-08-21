.class public interface abstract Lcom/miui/payment/ui/home/HomeViewInteraction;
.super Ljava/lang/Object;
.source "HomeViewInteraction.java"

# interfaces
.implements Lcom/miui/payment/ui/base/IViewInteraction;


# virtual methods
.method public abstract onDeleteResult(Z)V
.end method

.method public abstract setCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V
.end method

.method public abstract setRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V
.end method
