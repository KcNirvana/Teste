.class public interface abstract Lcom/alipay/mobile/common/common/Callback$c;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lcom/alipay/mobile/common/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/common/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/common/common/Callback;"
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Throwable;Z)V
.end method
