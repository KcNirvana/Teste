.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendResponseMessage(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AuthenticatorAgent;->getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callback: result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KEY_RESULT"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->debug(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v2

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->refreshCache(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    :cond_1
    return-void
.end method
