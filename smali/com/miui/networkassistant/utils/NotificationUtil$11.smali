.class final Lcom/miui/networkassistant/utils/NotificationUtil$11;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source ""


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$slotNum:I

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$context:Landroid/content/Context;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sim_slot_num_tag"

    iget v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$slotNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$context:Landroid/content/Context;

    const v2, 0x7f070301

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil$11;->setIconRes(I)V

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$11;->val$context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, p1, v0, v1, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->-wrap0(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void
.end method
