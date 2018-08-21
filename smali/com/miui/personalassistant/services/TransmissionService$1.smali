.class Lcom/miui/personalassistant/services/TransmissionService$1;
.super Lmiui/assistant/provider/ITransmissionService$Stub;
.source "TransmissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/services/TransmissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/services/TransmissionService;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/services/TransmissionService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/services/TransmissionService$1;->this$0:Lcom/miui/personalassistant/services/TransmissionService;

    invoke-direct {p0}, Lmiui/assistant/provider/ITransmissionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/TransmissionService$1;->this$0:Lcom/miui/personalassistant/services/TransmissionService;

    invoke-static {v0}, Lcom/miui/personalassistant/provider/TransmissionProxy;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/TransmissionProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/personalassistant/provider/TransmissionProxy;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
