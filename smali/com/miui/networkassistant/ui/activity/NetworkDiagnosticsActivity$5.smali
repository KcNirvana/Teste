.class final Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$5;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$5;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity$5;->this$0:Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;->-wrap3(Lcom/miui/networkassistant/ui/activity/NetworkDiagnosticsActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
