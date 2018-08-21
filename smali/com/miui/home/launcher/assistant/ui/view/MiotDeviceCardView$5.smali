.class Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$5;
.super Lcom/xiaomi/miot/service/ICallback$Stub;
.source "MiotDeviceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->onMenuClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-direct {p0}, Lcom/xiaomi/miot/service/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onDeviceUpdated(Landroid/os/Bundle;)V

    return-void
.end method
