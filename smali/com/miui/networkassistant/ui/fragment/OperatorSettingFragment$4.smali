.class final Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneNumberLoaded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$4;->this$0:Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)V

    return-void
.end method
