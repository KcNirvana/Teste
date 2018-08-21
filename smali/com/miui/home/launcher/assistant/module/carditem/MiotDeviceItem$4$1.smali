.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

.field final synthetic val$allCardInfo:Ljava/util/HashMap;

.field final synthetic val$deviceInfos:Ljava/util/ArrayList;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$deviceInfos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$allCardInfo:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$102(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$deviceInfos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$302(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->val$allCardInfo:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$602(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/util/HashMap;)Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4$1;->this$1:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$4;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->access$400(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;)V

    return-void
.end method
