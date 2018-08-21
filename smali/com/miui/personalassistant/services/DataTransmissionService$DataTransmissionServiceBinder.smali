.class Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;
.super Lmiui/assistant/index/IDataTransmissionService$Stub;
.source "DataTransmissionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/services/DataTransmissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataTransmissionServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/services/DataTransmissionService;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/services/DataTransmissionService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;->this$0:Lcom/miui/personalassistant/services/DataTransmissionService;

    invoke-direct {p0}, Lmiui/assistant/index/IDataTransmissionService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/services/DataTransmissionService;Lcom/miui/personalassistant/services/DataTransmissionService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;-><init>(Lcom/miui/personalassistant/services/DataTransmissionService;)V

    return-void
.end method


# virtual methods
.method public delAllAssistData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;->this$0:Lcom/miui/personalassistant/services/DataTransmissionService;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService;->access$300(Lcom/miui/personalassistant/services/DataTransmissionService;Ljava/lang/String;)V

    return-void
.end method

.method public delAssistData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;->this$0:Lcom/miui/personalassistant/services/DataTransmissionService;

    invoke-static {v0, p1, p2}, Lcom/miui/personalassistant/services/DataTransmissionService;->access$200(Lcom/miui/personalassistant/services/DataTransmissionService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getService()Lcom/miui/personalassistant/services/DataTransmissionService;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;->this$0:Lcom/miui/personalassistant/services/DataTransmissionService;

    return-object v0
.end method

.method public reportAssistData(Lmiui/assistant/assist/AssistContent;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/services/DataTransmissionService$DataTransmissionServiceBinder;->this$0:Lcom/miui/personalassistant/services/DataTransmissionService;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/services/DataTransmissionService;->access$100(Lcom/miui/personalassistant/services/DataTransmissionService;Lmiui/assistant/assist/AssistContent;)V

    return-void
.end method
