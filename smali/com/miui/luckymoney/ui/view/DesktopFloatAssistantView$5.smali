.class final Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get6(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get4(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/ImageView;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$5;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get5(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
