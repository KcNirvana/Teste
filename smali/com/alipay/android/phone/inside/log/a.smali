.class public Lcom/alipay/android/phone/inside/log/a;
.super Ljava/lang/Object;
.source "InsideLogPack.java"


# instance fields
.field private a:Lcom/alipay/android/phone/inside/log/g/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/inside/log/g/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/g/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/log/a;->a:Lcom/alipay/android/phone/inside/log/g/a;

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

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/a;->a:Lcom/alipay/android/phone/inside/log/g/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/log/g/a;->a([B)[B

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

    iget-object v0, p0, Lcom/alipay/android/phone/inside/log/a;->a:Lcom/alipay/android/phone/inside/log/g/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/log/g/a;->b([B)[B

    move-result-object v0

    return-object v0
.end method
