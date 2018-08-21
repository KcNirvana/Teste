.class public interface abstract Lcom/miui/payment/ui/monthly/MonthPresenter;
.super Ljava/lang/Object;
.source "MonthPresenter.java"

# interfaces
.implements Lcom/miui/payment/ui/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/payment/ui/base/IPresenter",
        "<",
        "Lcom/miui/payment/ui/monthly/MonthViewInteraction;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract loadDefaultMonthStatement()V
.end method

.method public abstract loadMonthStatement(J)V
.end method
