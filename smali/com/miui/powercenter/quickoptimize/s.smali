.class public Lcom/miui/powercenter/quickoptimize/s;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aQD()Lcom/miui/powercenter/quickoptimize/t;
    .locals 2

    new-instance v0, Lcom/miui/powercenter/quickoptimize/t;

    invoke-direct {v0}, Lcom/miui/powercenter/quickoptimize/t;-><init>()V

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->isLoading()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/powercenter/quickoptimize/t;->aEx:Z

    iget-boolean v1, v0, Lcom/miui/powercenter/quickoptimize/t;->aEx:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOP()I

    move-result v1

    iput v1, v0, Lcom/miui/powercenter/quickoptimize/t;->aEy:I

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powercenter/quickoptimize/j;->aOV()I

    move-result v1

    iput v1, v0, Lcom/miui/powercenter/quickoptimize/t;->aEz:I

    :cond_0
    return-object v0
.end method
