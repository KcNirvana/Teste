.class final Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimLocationAlertIgnore(Z)Z

    goto :goto_0
.end method
