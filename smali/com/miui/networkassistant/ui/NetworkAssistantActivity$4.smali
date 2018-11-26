.class final Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap2(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get5(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap4(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get2(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get3(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-get4(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)F

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->-wrap1(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;JJF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
