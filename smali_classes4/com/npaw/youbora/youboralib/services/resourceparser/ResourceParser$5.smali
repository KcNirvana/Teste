.class Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;
.super Ljava/lang/Object;
.source "ResourceParser.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->parseRealResourceAsync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

.field final synthetic val$nextParentResource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    iput-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;->val$nextParentResource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 1

    iget-object p2, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;->this$0:Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser$5;->val$nextParentResource:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->access$500(Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
