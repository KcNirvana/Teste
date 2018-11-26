.class final Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;->finish()V

    return-void
.end method
