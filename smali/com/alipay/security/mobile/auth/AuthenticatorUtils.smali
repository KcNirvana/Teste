.class public Lcom/alipay/security/mobile/auth/AuthenticatorUtils;
.super Ljava/lang/Object;
.source "AuthenticatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/security/mobile/auth/AuthenticatorUtils;->sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static sendAuthenticatorMessage(Lcom/alipay/security/mobile/auth/AuthenticatorCallback;IIZLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/security/mobile/auth/AuthenticatorCallback;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_RESULT"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "KEY_CHECKING_POLICY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "KEY_REGISTERED_TOKENS"

    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_0

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;->getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->getInstance()Lcom/alipay/security/mobile/cache/AuthenticatorCache;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/security/mobile/cache/AuthenticatorCache;->refreshCache(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_2
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SamsungNNLFIDOFingerPrint.processAsyn callback [type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] [result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0, v0}, Lcom/alipay/security/mobile/auth/AuthenticatorCallback;->callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "SamsungNNLFIDOFingerPrint.processAsyn callback [null]"

    invoke-static {v1}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/String;)V

    goto :goto_0
.end method
