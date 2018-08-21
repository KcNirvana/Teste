.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;
.super Ljava/lang/Object;
.source "LoginPreCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$200(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$8;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    iget-object v2, v2, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->handler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
