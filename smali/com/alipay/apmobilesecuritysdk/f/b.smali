.class public Lcom/alipay/apmobilesecuritysdk/f/b;
.super Lcom/alipay/apmobilesecuritysdk/f/a;
.source "DevTypeBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/apmobilesecuritysdk/f/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/apmobilesecuritysdk/f/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [B

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/f/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    aput-byte v3, v1, v2

    :goto_0
    return-object v1

    :cond_0
    aput-byte v2, v1, v2

    goto :goto_0
.end method
