.class public Lcom/alipay/apmobilesecuritysdk/f/f;
.super Lcom/alipay/apmobilesecuritysdk/f/a;
.source "DevTypeString.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/apmobilesecuritysdk/f/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/f/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
