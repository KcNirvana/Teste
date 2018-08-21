.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

.field final synthetic val$deviceInfo:Lcom/xiaomi/miot/DeviceInfo;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;Ljava/lang/String;Lcom/xiaomi/miot/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$deviceInfo:Lcom/xiaomi/miot/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miot/DeviceInfo;

    iget-object v2, v2, Lcom/xiaomi/miot/DeviceInfo;->did:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$deviceInfo:Lcom/xiaomi/miot/DeviceInfo;

    iget-object v3, v3, Lcom/xiaomi/miot/DeviceInfo;->did:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$deviceInfo:Lcom/xiaomi/miot/DeviceInfo;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->val$deviceInfo:Lcom/xiaomi/miot/DeviceInfo;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$5;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
