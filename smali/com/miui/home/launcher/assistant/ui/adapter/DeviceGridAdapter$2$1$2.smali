.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->onFailure(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v0, v0, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v0, v0, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v1, 0x1b02026e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$2;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v1, 0x1b02026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
