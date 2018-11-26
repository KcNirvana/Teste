.class final Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

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
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
