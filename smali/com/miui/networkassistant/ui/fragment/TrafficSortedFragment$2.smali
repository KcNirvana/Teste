.class final Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/TrafficSortedFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
