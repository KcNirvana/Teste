.class Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;
.super Ljava/lang/Object;
.source "ResourceParser.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


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

.field final synthetic val$cdn:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;

.field final synthetic val$requestHeaders:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/util/Map;Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    iput-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->val$requestHeaders:Ljava/util/Map;

    iput-object p3, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->val$cdn:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-static {p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$200(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->val$requestHeaders:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-static {p2}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$300(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->val$cdn:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;

    invoke-static {p2, v0, p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$400(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDN;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$4;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$100(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;)V

    :goto_0
    return-void
.end method
