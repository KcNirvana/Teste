.class Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;
.super Ljava/lang/Object;
.source "AgendaSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_birthday_remind"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_credit_remind"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_loan_remind"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_elecbill_remind"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b090031
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
