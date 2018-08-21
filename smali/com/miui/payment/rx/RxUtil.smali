.class public Lcom/miui/payment/rx/RxUtil;
.super Ljava/lang/Object;
.source "RxUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer",
            "<TT;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/rx/RxUtil$1;

    invoke-direct {v0}, Lcom/miui/payment/rx/RxUtil$1;-><init>()V

    return-object v0
.end method
