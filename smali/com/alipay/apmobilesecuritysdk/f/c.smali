.class public Lcom/alipay/apmobilesecuritysdk/f/c;
.super Lcom/alipay/apmobilesecuritysdk/f/a;
.source "DevTypeByteArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/apmobilesecuritysdk/f/a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/f/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/c;->a:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method
