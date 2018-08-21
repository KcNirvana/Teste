.class public abstract Lcom/alipay/android/phone/mrpc/core/r;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/ad;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/r;->b:Z

    return-void
.end method


# virtual methods
.method public f()Lcom/alipay/android/phone/mrpc/core/ad;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/r;->a:Lcom/alipay/android/phone/mrpc/core/ad;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/r;->b:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/mrpc/core/r;->b:Z

    return v0
.end method
