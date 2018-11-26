.class final Lcom/miui/luckymoney/ui/view/LockScreenView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private passedMilliseconds:I

.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

.field final synthetic val$milliseconds:I


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/LockScreenView;I)V
    .locals 1

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    iput p2, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->val$milliseconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->clearKeyguardNotifications(Landroid/content/Context;)V

    iget v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    iget v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    iget v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->val$milliseconds:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->-get0(Lcom/miui/luckymoney/ui/view/LockScreenView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x14

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->-set0(Lcom/miui/luckymoney/ui/view/LockScreenView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
