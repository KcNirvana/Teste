.class public interface abstract Lcom/miui/payment/ui/home/HomePresenter;
.super Ljava/lang/Object;
.source "HomePresenter.java"

# interfaces
.implements Lcom/miui/payment/ui/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/payment/ui/base/IPresenter",
        "<",
        "Lcom/miui/payment/ui/home/HomeViewInteraction;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deleteRecords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadAllRecords()V
.end method

.method public abstract loadCurrentMonthTotal()V
.end method

.method public abstract loadRecords(II)V
.end method

.method public abstract loadTodayTotal()V
.end method
