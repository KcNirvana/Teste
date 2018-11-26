.class final Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;
.super Lcom/miui/common/a/b/b;
.source ""


# static fields
.field private static final synthetic sZ:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$miui$networkassistant$service$TcSmsReportService$SmsReportStatus:[I

.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-direct {p0, p2}, Lcom/miui/common/a/b/b;-><init>(Landroid/app/Fragment;)V

    return-void
.end method

.method private static synthetic uV()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->sZ:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->sZ:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->values()[Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Init:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Received:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Receiving:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->Timeout:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->sZ:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getStatus()Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->uV()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f07030c

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07031f

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReturned()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07031e

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get8(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get7(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/ui/view/ToolbarItemView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReceiveNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/ToolbarItemView;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get5(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get15(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/TcSmsReportService$TcSmsReportServiceBinder;->getSmsReturned()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f07030b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get3(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get2(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-wrap9(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get16(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;->SmsSendFailure:Lcom/miui/networkassistant/service/TcSmsReportService$SmsReportStatus;

    if-ne v0, v2, :cond_0

    const v0, 0x7f07031c

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->this$0:Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;->-get1(Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/networkassistant/service/TcSmsReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f07031d

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment$7;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
