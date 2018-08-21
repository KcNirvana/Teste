.class Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;
.super Ljava/lang/Object;
.source "MiotDeviceItem.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->val$uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getInstance()Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/util/MiotDeviceUtils;->getDeviceListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
