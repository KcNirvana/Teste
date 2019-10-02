.class Lcom/miui/video/base/account/VideoMiAccountManager$2$1;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/base/account/VideoMiAccountManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/base/account/VideoMiAccountManager$2;

.field final synthetic val$finalXiaomiUserInfo:Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager$2;Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;->this$1:Lcom/miui/video/base/account/VideoMiAccountManager$2;

    iput-object p2, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;->val$finalXiaomiUserInfo:Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;->this$1:Lcom/miui/video/base/account/VideoMiAccountManager$2;

    iget-object v0, v0, Lcom/miui/video/base/account/VideoMiAccountManager$2;->val$userInfoCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$2$1;->val$finalXiaomiUserInfo:Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;

    invoke-interface {v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;->onResult(Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;)V

    :cond_0
    return-void
.end method
