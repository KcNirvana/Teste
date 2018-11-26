.class final Lcom/miui/networkassistant/utils/NotificationUtil$1;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source ""


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$networkType:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$packageName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$networkType:I

    iput-object p3, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_broadcast_allow_app_firewall"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "networkType"

    iget v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$networkType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$context:Landroid/content/Context;

    const v2, 0x7f07021d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/miui/networkassistant/utils/NotificationUtil$1;->setIconRes(I)V

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v1, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->-wrap0(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void
.end method
