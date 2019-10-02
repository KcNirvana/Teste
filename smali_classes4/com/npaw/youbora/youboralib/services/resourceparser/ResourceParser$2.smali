.class Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$2;
.super Ljava/lang/Object;
.source "ResourceParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;-><init>(Lcom/npaw/youbora/youboralib/managers/ViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$2;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "ParseHLS timeout"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$2;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$000(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V

    return-void
.end method
