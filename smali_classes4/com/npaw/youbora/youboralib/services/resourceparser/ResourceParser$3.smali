.class Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$3;
.super Ljava/lang/Object;
.source "ResourceParser.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseCDNAsync()V
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

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$3;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/net/HttpURLConnection;)V
    .locals 0

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$3;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$100(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V

    return-void
.end method
