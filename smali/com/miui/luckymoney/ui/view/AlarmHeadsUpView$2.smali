.class final Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    iput-object p2, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->val$context:Landroid/content/Context;

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->val$context:Landroid/content/Context;

    const v1, 0x7f060001

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$2;->this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss()V

    return-void
.end method
