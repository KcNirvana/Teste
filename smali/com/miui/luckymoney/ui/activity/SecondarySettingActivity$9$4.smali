.class final Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get1(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckySoundWarningLevel(I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get7(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9$4;->this$1:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity$9;->this$0:Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;->-get13(Lcom/miui/luckymoney/ui/activity/SecondarySettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
