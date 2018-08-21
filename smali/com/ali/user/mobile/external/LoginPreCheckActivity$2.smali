.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;
.super Ljava/lang/Object;
.source "LoginPreCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startCheckUserInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/info/AppInfo;->getUmid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tk is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2$1;-><init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$2;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$500(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    goto :goto_0
.end method
