.class public abstract Lcom/alipay/android/phone/inside/d/c;
.super Ljava/lang/Object;
.source "RpcService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/alipay/android/phone/mrpc/core/x;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/v;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/v;",
            ")V"
        }
    .end annotation
.end method
