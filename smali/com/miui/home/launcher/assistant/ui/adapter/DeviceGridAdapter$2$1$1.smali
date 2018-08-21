.class Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->onSuccess(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

.field final synthetic val$subtitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->val$subtitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$info:Lcom/xiaomi/miot/DeviceInfo;

    iget-boolean v0, v0, Lcom/xiaomi/miot/DeviceInfo;->currentStatus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v1, 0x1b02026e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->val$subtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->val$subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1$1;->this$2:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2$1;->this$1:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$2;->val$finalHolder:Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter$ViewHolder;->mOpButton:Landroid/widget/ImageView;

    const v1, 0x1b02026d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
