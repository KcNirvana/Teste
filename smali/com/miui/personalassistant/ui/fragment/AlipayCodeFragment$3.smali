.class Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;
.super Landroid/os/Handler;
.source "AlipayCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "AlipayCodeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WHAT_LOGIN_OUT msg.arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/personalassistant/model/AlipayUserInfo;->saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_alipay_paycode"

    invoke-static {v0, v1, v4}, Lcom/miui/personalassistant/util/Preference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const-string/jumbo v1, "show_toast"

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b0247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;->this$0:Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
