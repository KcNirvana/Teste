.class final Lcom/miui/luckymoney/ui/view/LockScreenView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/LockScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$1;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$1;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->dismiss()V

    return-void
.end method
