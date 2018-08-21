.class public Lcom/alipay/android/phone/mrpc/core/a/c/a;
.super Ljava/lang/Object;
.source "RPCProtoDesc.java"


# instance fields
.field public a:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget-byte v0, p0, Lcom/alipay/android/phone/mrpc/core/a/c/a;->a:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
