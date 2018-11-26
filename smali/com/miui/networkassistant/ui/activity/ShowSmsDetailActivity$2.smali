.class final Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionUpdated(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070313

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity$2;->this$0:Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/activity/ShowSmsDetailActivity;->finish()V

    :cond_0
    return-void
.end method
