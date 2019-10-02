.class Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter$1;
.super Ljava/lang/Object;
.source "LocalAccountManagerAdapter.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->wrapRemoveAccountCallback(Landroid/accounts/AccountManagerCallback;)Landroid/accounts/AccountManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

.field final synthetic val$callback:Landroid/accounts/AccountManagerCallback;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;Landroid/accounts/AccountManagerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter$1;->this$0:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    iput-object p2, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter$1;->val$callback:Landroid/accounts/AccountManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter$1;->val$callback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter$1;->val$callback:Landroid/accounts/AccountManagerCallback;

    invoke-interface {v0, p1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->clearAllXiaomiAccountCookies(Landroid/content/Context;)V

    return-void
.end method
