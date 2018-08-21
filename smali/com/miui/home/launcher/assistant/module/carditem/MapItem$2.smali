.class Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;
.super Ljava/lang/Object;
.source "MapItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->queryEtaInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

.field final synthetic val$endAdress:Ljava/lang/String;

.field final synthetic val$endLat:Ljava/lang/String;

.field final synthetic val$endLong:Ljava/lang/String;

.field final synthetic val$startAddress:Ljava/lang/String;

.field final synthetic val$startLat:Ljava/lang/String;

.field final synthetic val$startLong:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startLong:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startLat:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endLong:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endLat:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endAdress:Ljava/lang/String;

    iput-object p8, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startLong:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startLat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$startAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endLong:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endLat:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$endAdress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->val$type:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$300(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    iget-object v2, v2, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/carditem/MapItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/MapItem;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/module/carditem/MapItem;->access$600(Lcom/miui/home/launcher/assistant/module/carditem/MapItem;)Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver;->getEtaInfo(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/home/launcher/assistant/module/receiver/LocationReceiver$LoadCallBack;)V

    return-void
.end method
