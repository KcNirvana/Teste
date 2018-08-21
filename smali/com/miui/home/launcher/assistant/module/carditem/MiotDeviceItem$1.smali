.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;
.super Lcom/xiaomi/miot/service/ICallback$Stub;
.source "MiotDeviceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->startRefreshData()V
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

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

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$2;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$1;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
