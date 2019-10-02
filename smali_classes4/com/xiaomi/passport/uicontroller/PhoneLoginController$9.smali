.class Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->register(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
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

.field final synthetic val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->this$0:Lcom/xiaomi/passport/uicontroller/PhoneLoginController;

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-direct {p0}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onRegisterSuccess(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "registerByPhone"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/UserRestrictedException;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onRegisterReachLimit()V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/TokenExpiredException;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onTokenExpired()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/ReachLimitException;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_USER_ACTION_OVER_LIMIT:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onRegisterFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->convertErrorCode(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onRegisterFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "registerByPhone"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$9;->val$phoneRegisterCallback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneRegisterCallback;->onRegisterFailed(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
