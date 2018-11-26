.class final Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;->this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView$1;->this$0:Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->dismiss()V

    return-void
.end method
