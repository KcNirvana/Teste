.class public interface abstract Lcom/miui/payment/ui/edit/EditPresenter;
.super Ljava/lang/Object;
.source "EditPresenter.java"

# interfaces
.implements Lcom/miui/payment/ui/base/IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/payment/ui/base/IPresenter",
        "<",
        "Lcom/miui/payment/ui/edit/EditViewInteraction;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deleteRecord(J)V
.end method

.method public abstract saveEditData(Lcom/miui/payment/ui/edit/EditData;)V
.end method
