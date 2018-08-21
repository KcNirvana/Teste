.class Lcom/alipay/android/phone/mrpc/core/b/c$a;
.super Ljava/lang/Object;
.source "RPCDataContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/b/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/b/c;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/b/c$a;->b:Lcom/alipay/android/phone/mrpc/core/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/b/c$a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mrpc/core/b/c$a;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/phone/mrpc/core/b/c$a;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
