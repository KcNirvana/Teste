.class final Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$3;->val$context:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->dismiss()V

    return-void
.end method
