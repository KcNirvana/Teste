.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$2;
.super Lcom/xiaomi/miot/service/ICallback$Stub;
.source "ExpandMiotDeviceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

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

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->onDeviceChanged(Landroid/os/Bundle;)V

    return-void
.end method
