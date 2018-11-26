.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f070303

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f070304

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->setNumberText(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f070305

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f070320

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->getDesc()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v4}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get6(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v5}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get17(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->startMonitorSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap4(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f07031f

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap6(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap10(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v2, 0x7f07031a

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const v3, 0x7f07031b

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070321

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get14(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get12(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$2;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get11(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_6
        0x7f0a01c1 -> :sswitch_7
        0x7f0a01c2 -> :sswitch_0
        0x7f0a01c3 -> :sswitch_1
        0x7f0a01c4 -> :sswitch_2
        0x7f0a01c7 -> :sswitch_3
        0x7f0a01c9 -> :sswitch_4
        0x7f0a01ca -> :sswitch_5
    .end sparse-switch
.end method
