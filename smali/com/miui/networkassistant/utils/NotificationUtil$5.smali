.class final Lcom/miui/networkassistant/utils/NotificationUtil$5;
.super Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuild(Landroid/app/Notification$Builder;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method public onCreateIntent(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "sim_slot_num_tag"

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
