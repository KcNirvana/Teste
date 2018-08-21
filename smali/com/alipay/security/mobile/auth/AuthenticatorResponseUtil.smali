.class public Lcom/alipay/security/mobile/auth/AuthenticatorResponseUtil;
.super Ljava/lang/Object;
.source "AuthenticatorResponseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticatorResponse(Landroid/os/Message;)Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-direct {v0}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;-><init>()V

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setType(I)V

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResult(I)V

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_CHECKING_POLICY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setCheckPolicyOnly(Z)V

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_REGISTERED_TOKENS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResgistedTokens(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setResultMessage(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "KEY_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/auth/AuthenticatorLOG;->fpInfo(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
