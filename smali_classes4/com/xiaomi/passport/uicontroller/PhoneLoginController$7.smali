.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->passwordLogin(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

.field final synthetic val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

.field final synthetic val$passwordLoginParams:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->this$0:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginParams:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-interface {v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onLoginSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    const-string v1, "PhoneLoginController"

    const-string v2, "passwordLogin"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginParams:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->serviceId:Ljava/lang/String;

    check-cast v1, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onNeedNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;

    new-instance p1, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getMetaLoginData()Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setMetaLoginData(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginParams:Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setServiceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException;->getStep1Token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->setStep1Token(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/Step2LoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onLoginByStep2(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    check-cast v1, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onNeedCaptchaCode(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onNeedCaptchaCode(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_PASSWORD:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onLoginFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->convertErrorCode(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->this$0:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    invoke-static {v2, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->access$100(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Ljava/lang/Throwable;)Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v0, p1, v1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onLoginFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "PhoneLoginController"

    const-string v2, "passwordLogin"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$7;->val$passwordLoginCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PasswordLoginCallback;->onLoginFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
