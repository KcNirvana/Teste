.class final Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity$7;->this$0:Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;->-get2(Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;)Lmiui/widget/SlidingButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
