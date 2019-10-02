.class final Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;
.super Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback;
.source "PhoneLoginController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->getPhoneLoginConfigOnLine(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/SimpleFutureTask$Callback<",
        "Lcom/xiaomi/passport/data/LoginPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

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
            "Lcom/xiaomi/passport/data/LoginPreference;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/uicontroller/SimpleFutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/data/LoginPreference;

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->onSuccess(Lcom/xiaomi/passport/data/LoginPreference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "getPhoneLoginConfigOnLine"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/accountsdk/account/exception/InvalidPhoneNumException;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-interface {p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->onPhoneNumInvalid()V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController;->convertErrorCode(Ljava/lang/Throwable;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->onError(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "PhoneLoginController"

    const-string v1, "getPhoneLoginConfigOnLine"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$15;->val$callback:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$PhoneLoginConfigCallback;->onError(Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
