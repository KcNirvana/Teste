.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;
.super Lcom/xiaomi/miot/service/ICallback$Stub;
.source "MiotDeviceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefresh(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-direct {p0}, Lcom/xiaomi/miot/service/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;I)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$3;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$500(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/os/Bundle;)V

    return-void
.end method
