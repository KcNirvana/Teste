.class final Lcom/miui/networkassistant/utils/NotificationUtil$14;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source ""


# instance fields
.field final synthetic val$btnText:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$14;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$14;->val$btnText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 4

    const/4 v3, 0x2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x7f02028c

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$14;->setIconRes(I)V

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$14;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/utils/NotificationUtil$14;->val$btnText:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->-wrap0(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    const v1, 0x7f020223

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$14;->setIconRes(I)V

    goto :goto_0
.end method
