.class final Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/SocketTaggerManager$1;->this$0:Lcom/miui/networkassistant/service/tm/SocketTaggerManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/SocketTaggerManager;->-wrap0(Lcom/miui/networkassistant/service/tm/SocketTaggerManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
