.class Lcom/xiaomi/accounts/AccountManager$7;
.super Lcom/xiaomi/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/AccountManager$7;->this$0:Lcom/xiaomi/accounts/AccountManager;

    iput-object p5, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$accountType:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$authTokenType:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$activity:Landroid/app/Activity;

    iput-object p9, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$optionsIn:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/accounts/AccountManager$AmsTask;-><init>(Lcom/xiaomi/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$7;->this$0:Lcom/xiaomi/accounts/AccountManager;

    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManager;->access$000(Lcom/xiaomi/accounts/AccountManager;)Lcom/xiaomi/accounts/AccountManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accounts/AccountManager$7;->mResponse:Lcom/xiaomi/accounts/IAccountManagerResponse;

    iget-object v3, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$accountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$authTokenType:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/xiaomi/accounts/AccountManager$7;->val$optionsIn:Landroid/os/Bundle;

    invoke-virtual/range {v1 .. v7}, Lcom/xiaomi/accounts/AccountManagerService;->addAcount(Lcom/xiaomi/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method
