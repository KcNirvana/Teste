.class Lcom/miui/video/base/account/VideoMiAccountManager$3;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

.field final synthetic val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iput-object p2, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const-string p1, "VideoMiAccountManager"

    const-string v1, "login fail : code = -1"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    invoke-interface {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;->onFail(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    :goto_0
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "VideoMiAccountManager"

    const-string v1, "login fail : code = -1"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    invoke-interface {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;->onFail(I)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "errorCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_5

    const-string p1, "VideoMiAccountManager"

    const-string v0, "login success"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    invoke-interface {p1}, Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;->onSuccess()V

    :cond_4
    const/4 p1, 0x1

    const-string v0, "UserCenter"

    invoke-static {p1, v0}, Lcom/miui/video/base/account/AccountStatisticsUtils;->login(ZLjava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "VideoMiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login fail : code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$3;->val$callback:Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;

    invoke-interface {v0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;->onFail(I)V

    :cond_6
    const/4 p1, 0x0

    const-string v0, "UserCenter"

    invoke-static {p1, v0}, Lcom/miui/video/base/account/AccountStatisticsUtils;->login(ZLjava/lang/String;)V

    :goto_2
    return-void
.end method
