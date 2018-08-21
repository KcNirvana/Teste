.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onDeviceUpdated(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-class v3, Lcom/xiaomi/miot/DeviceInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "current_uid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->val$intent:Landroid/content/Intent;

    const-string/jumbo v3, "device_infos"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miot/DeviceInfo;

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;Ljava/lang/String;Lcom/xiaomi/miot/DeviceInfo;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
