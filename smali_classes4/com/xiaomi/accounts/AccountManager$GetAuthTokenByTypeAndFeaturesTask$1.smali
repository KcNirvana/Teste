.class Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1202(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I

    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object p1, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v1, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Lcom/xiaomi/accounts/AccountManager;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v2, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v4, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "authAccount"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authtoken"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-interface {v0, p1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v2, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v2, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Lcom/xiaomi/accounts/AccountManager;

    aget-object v4, p1, v1

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v7, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Lcom/xiaomi/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v2, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v3, v2, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Lcom/xiaomi/accounts/AccountManager;

    aget-object v4, p1, v1

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v5, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v6, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object p1, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v8, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v9, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v9}, Lcom/xiaomi/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1$1;-><init>(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android"

    const-string v3, "android.accounts.ChooseAccountActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "accounts"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "accountManagerResponse"

    new-instance v2, Lcom/xiaomi/accounts/AccountManagerResponse;

    invoke-direct {v2, v0}, Lcom/xiaomi/accounts/AccountManagerResponse;-><init>(Lcom/xiaomi/accounts/IAccountManagerResponse;)V

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object p1, p1, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "accounts"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    iget-object v0, v0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mResponse:Lcom/xiaomi/accounts/IAccountManagerResponse;

    invoke-interface {v0, p1}, Lcom/xiaomi/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v0, p1}, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1100(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v0, p1}, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$1000(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception p1

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;->this$1:Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    invoke-static {v0, p1}, Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->access$900(Lcom/xiaomi/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V

    return-void
.end method
