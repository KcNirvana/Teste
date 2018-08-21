.class Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;
.super Ljava/lang/Object;
.source "ShoppingCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1100(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Lcom/miui/home/launcher/assistant/module/model/Shopping;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;Lcom/miui/home/launcher/assistant/module/model/Shopping;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.personalassistant.SHOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "card_button_click_shopping"

    const-string/jumbo v3, "20"

    const-string/jumbo v4, "ShoppingCardView"

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1300(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1400(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;->access$1500(Lcom/miui/home/launcher/assistant/ui/view/ShoppingCardView;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090113 -> :sswitch_4
        0x1b090155 -> :sswitch_3
        0x1b09015a -> :sswitch_5
        0x1b090173 -> :sswitch_0
        0x1b090177 -> :sswitch_1
        0x1b09017b -> :sswitch_2
    .end sparse-switch
.end method
