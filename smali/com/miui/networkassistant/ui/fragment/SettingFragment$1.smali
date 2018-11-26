.class final Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

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
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
