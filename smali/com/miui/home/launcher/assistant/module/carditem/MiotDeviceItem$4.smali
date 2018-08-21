.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->processRemoteDevice(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->val$bundle:Landroid/os/Bundle;

    const-class v9, Lcom/xiaomi/miot/DeviceInfo;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v9, "device_infos"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v9, "device_card_data"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v9, "current_uid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v8

    invoke-virtual {v8, v2, v7}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->insertDeviceListToDB(Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v8

    new-instance v9, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;

    invoke-direct {v9, p0, v7, v2, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
