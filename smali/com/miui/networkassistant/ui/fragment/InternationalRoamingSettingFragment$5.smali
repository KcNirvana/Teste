.class final Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Lmiui/app/AlertDialog;

    invoke-virtual {p1}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setNoMoreAskRoaming(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;->val$type:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    return-void
.end method
