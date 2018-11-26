.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItemUpdate(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-set0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-set2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get13(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get12(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get11(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$1;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap5(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)V

    return-void
.end method
