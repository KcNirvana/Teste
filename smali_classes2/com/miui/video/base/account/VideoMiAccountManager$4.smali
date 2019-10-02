.class Lcom/miui/video/base/account/VideoMiAccountManager$4;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;->logout(Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;)V
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
.field final synthetic this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

.field final synthetic val$logoutCallback:Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$4;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iput-object p2, p0, Lcom/miui/video/base/account/VideoMiAccountManager$4;->val$logoutCallback:Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$4;->val$logoutCallback:Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;

    invoke-interface {p1}, Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;->onLogoutSuccess()V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/video/base/account/AccountStatisticsUtils;->onLogout(Z)V
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$4;->val$logoutCallback:Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;

    invoke-interface {p1}, Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;->onLogoutFail()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/video/base/account/AccountStatisticsUtils;->onLogout(Z)V

    return-void
.end method
