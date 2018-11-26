.class final Lcom/miui/networkassistant/utils/NotificationUtil$15;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source ""


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/NotificationUtil$15;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const v0, 0x7f02028c

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$15;->setIconRes(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/utils/NotificationUtil$15;->val$context:Landroid/content/Context;

    invoke-static {v0, p1, v3, v3, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->-wrap0(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void

    :cond_0
    const v0, 0x7f0201fe

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$15;->setIconRes(I)V

    goto :goto_0
.end method
