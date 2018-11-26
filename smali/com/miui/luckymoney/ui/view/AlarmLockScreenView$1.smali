.class final Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$1;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView$1;->this$0:Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->dismiss()V

    return-void
.end method
