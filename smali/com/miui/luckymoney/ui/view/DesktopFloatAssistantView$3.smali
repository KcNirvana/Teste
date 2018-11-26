.class final Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$3;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$3;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
