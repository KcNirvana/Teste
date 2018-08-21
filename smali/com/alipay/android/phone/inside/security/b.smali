.class public Lcom/alipay/android/phone/inside/security/b;
.super Ljava/lang/Object;
.source "InsideRpcPack.java"


# instance fields
.field private a:Lcom/alipay/android/phone/inside/security/net/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/security/net/a;

    sget-object v1, Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;->RPC:Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/security/net/a;-><init>(Lcom/alipay/android/phone/inside/security/net/ClientPackEnum;)V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/security/b;->a:Lcom/alipay/android/phone/inside/security/net/a;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/b;->a:Lcom/alipay/android/phone/inside/security/net/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/security/net/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/phone/inside/security/b;->a:Lcom/alipay/android/phone/inside/security/net/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/security/net/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method
