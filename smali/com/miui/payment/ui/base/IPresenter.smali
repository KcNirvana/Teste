.class public interface abstract Lcom/miui/payment/ui/base/IPresenter;
.super Ljava/lang/Object;
.source "IPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/miui/payment/ui/base/IViewInteraction;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract unsubscribe()V
.end method
