.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

.field final synthetic val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

.field final synthetic val$info:Lcom/xiaomi/miot/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;Lcom/xiaomi/miot/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const v5, 0x1b0b029f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCurrentState()Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v3

    sget-object v4, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.xiaomi.smarthome"

    const-string/jumbo v5, "com.xiaomi.smarthome.miui10.MIUI10CardActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.personalassistant"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v4, v4, Lcom/xiaomi/miot/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCardInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "device_card"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v5, v5, Lcom/xiaomi/miot/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->getCardInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v3, "model"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v4, v4, Lcom/xiaomi/miot/DeviceInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "did"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v4, v4, Lcom/xiaomi/miot/DeviceInfo;->did:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "device_name"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v4, v4, Lcom/xiaomi/miot/DeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "from"

    const-string/jumbo v4, "miui"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v3, v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/RectF;

    aget v3, v1, v6

    int-to-float v3, v3

    aget v4, v1, v7

    int-to-float v4, v4

    aget v5, v1, v6

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v6, v6, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aget v6, v1, v7

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v7, v7, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string/jumbo v3, "view_position"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/home/launcher/assistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "miui_negativeone_click"

    const-string/jumbo v5, "21"

    const-string/jumbo v6, "MiotDeviceCardView"

    const-string/jumbo v7, "miot_deivce_item_click"

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
