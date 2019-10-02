.class Lcom/miui/video/base/account/VideoMiAccountManager$2;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;->getUserInfo(Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

.field final synthetic val$userInfoCallbackWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iput-object p2, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2;->val$userInfoCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$400(Lcom/miui/video/base/account/VideoMiAccountManager;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "VideoMiAccountManager"

    const-string v2, "get UserInfo : Error"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VideoMiAccountManager"

    const-string v2, "get UserInfo : AuthenticationFailureException"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager$2;Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;)V

    invoke-static {v1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method
