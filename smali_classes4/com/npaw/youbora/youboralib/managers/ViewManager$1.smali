.class Lcom/npaw/youbora/youboralib/managers/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Communication$ExtraOperationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/managers/ViewManager;-><init>(Lcom/npaw/youbora/youboralib/managers/InfoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraOperations(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resource"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "resource"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "nodeHost"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "nodeHost"

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v1, v1, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nodeType"

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v1, v1, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getNodeType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "useCDNFromParser"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cdn"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cdn"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "cdn"

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/ViewManager$1;->this$0:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v1, v1, Lcom/npaw/youbora/youboralib/managers/ViewManager;->resourceParser:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getCDNCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
