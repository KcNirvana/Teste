.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

.field final synthetic val$deviceInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->val$deviceInfos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->val$uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->val$deviceInfos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$302(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    return-void
.end method
