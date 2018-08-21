.class public Lcom/ali/user/mobile/authlogin/b/c;
.super Ljava/lang/Object;
.source "AuthLoginSecuritySignature.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    const-string/jumbo v2, "AuthLoginSecuritySignature"

    const-string/jumbo v3, "\u83b7\u53d6sgMgr\u5bf9\u8c61"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string/jumbo v2, "AuthLoginSecuritySignature"

    const-string/jumbo v3, "sgMgr not null"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "INPUT"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "ATLAS"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo p2, "a"

    :cond_0
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    iput-object p1, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    iput-object v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const/4 v2, 0x5

    iput v2, v3, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    const-string/jumbo v2, ""

    invoke-interface {v1, v3, v2}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AuthLoginSecuritySignature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sign = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-string/jumbo v1, "AuthLoginSecuritySignature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end sign = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AuthLoginSecuritySignature"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "AliAuthLoginSDK_SignFailure"

    const-string/jumbo v3, "ALIAUTH_0415_13"

    const-string/jumbo v4, "Sign_1"

    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "AuthLoginSecuritySignature"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v1, "event"

    const-string/jumbo v2, "AliAuthLoginSDK_SignFailure"

    const-string/jumbo v3, "ALIAUTH_0415_13"

    const-string/jumbo v4, "Sign_2"

    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
