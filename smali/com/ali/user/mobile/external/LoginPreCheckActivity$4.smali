.class Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;
.super Landroid/os/Handler;
.source "LoginPreCheckActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$700(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$800(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$900(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$400(Lcom/ali/user/mobile/external/LoginPreCheckActivity;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ali/user/mobile/external/LoginPreCheckActivity$4;->this$0:Lcom/ali/user/mobile/external/LoginPreCheckActivity;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/external/LoginPreCheckActivity;->access$1000(Lcom/ali/user/mobile/external/LoginPreCheckActivity;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_4
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_1
        0x7d4 -> :sswitch_3
    .end sparse-switch
.end method
