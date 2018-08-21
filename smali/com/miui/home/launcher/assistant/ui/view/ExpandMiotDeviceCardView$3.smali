.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.xiaomi.smarthome"

    const-string/jumbo v3, "com.xiaomi.smarthome.miui.CommonDeviceEditActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "extra"

    new-instance v2, Lcom/xiaomi/miot/BinderParcel;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/xiaomi/miot/service/ICallback$Stub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/miot/service/ICallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/miot/BinderParcel;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$3;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "miui_negativeone_click"

    const-string/jumbo v3, "21"

    const-string/jumbo v4, "MiotDeviceCardView"

    const-string/jumbo v5, "miot_device_edit_click"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
