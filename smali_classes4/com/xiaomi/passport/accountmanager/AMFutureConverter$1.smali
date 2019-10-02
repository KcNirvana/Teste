.class final Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;
.super Ljava/lang/Object;
.source "AMFutureConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/AMFutureConverter;->fromServiceTokenFuture(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$amFuture:Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

.field final synthetic val$stFuture:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$stFuture:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iput-object p2, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$amFuture:Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$stFuture:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->toAMException(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$amFuture:Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$amFuture:Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

    invoke-static {v0}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->toAMBundle(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;->setResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$1;->val$amFuture:Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;

    new-instance v2, Landroid/accounts/AuthenticatorException;

    const-string v3, "errorCode=%s;errorMsg:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter$ConvertException;->errorMsg:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/accountmanager/AMFutureConverter$MyAccountManagerFuture;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
