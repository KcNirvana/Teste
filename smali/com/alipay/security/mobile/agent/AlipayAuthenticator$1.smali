.class Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;
.source "AlipayAuthenticator.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/IAlipayAuthenticatorListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Bundle;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/alipay/security/mobile/util/LogCollect;->parseLog(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-static {v2}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$000(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->refreshCache(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VendorFingerPrint.processAsyn callback [type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/agent/AlipayAuthenticator$1;->this$0:Lcom/alipay/security/mobile/agent/AlipayAuthenticator;

    invoke-static {v1}, Lcom/alipay/security/mobile/agent/AlipayAuthenticator;->access$100(Lcom/alipay/security/mobile/agent/AlipayAuthenticator;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v1, "VendorFingerPrint.processAsyn callback [null]"

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
