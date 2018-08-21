.class public Lcom/alipay/android/app/plugin/impl/DnsEngineImpl;
.super Ljava/lang/Object;
.source "DnsEngineImpl.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x2

    const-string/jumbo v1, "DnsEngineImpl::getInetAddresses"

    const-string/jumbo v2, "default dns model"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public inscLoopCount()V
    .locals 3

    const/4 v0, 0x2

    const-string/jumbo v1, "DnsEngineImpl::inscLoopCount"

    const-string/jumbo v2, "default dns model"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isClientConnDegrade()Z
    .locals 3

    const/4 v0, 0x2

    const-string/jumbo v1, "DnsEngineImpl::isClientConnDegrade"

    const-string/jumbo v2, "default dns model"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public saveTradeNo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateDns()V
    .locals 3

    const/4 v0, 0x2

    const-string/jumbo v1, "DnsEngineImpl::updateDns"

    const-string/jumbo v2, "default dns model"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
