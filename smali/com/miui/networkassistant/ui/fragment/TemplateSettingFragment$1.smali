.class final Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TextInputDialog$TextInputDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSetted(Ljava/lang/String;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Z)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->-set1(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;)Lmiui/preference/ValuePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
