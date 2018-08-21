.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;
.super Lcom/xiaomi/miot/service/ICallback$Stub;
.source "DeviceGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    invoke-direct {p0}, Lcom/xiaomi/miot/service/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "new_description"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "new_state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iput-object v1, v2, Lcom/xiaomi/miot/DeviceInfo;->subtitle:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
