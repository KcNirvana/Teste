.class public Lcom/alipay/apmobilesecuritysdk/f/d;
.super Lcom/alipay/apmobilesecuritysdk/f/a;
.source "DevTypeInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/apmobilesecuritysdk/f/a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/f/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    return-object v1
.end method
