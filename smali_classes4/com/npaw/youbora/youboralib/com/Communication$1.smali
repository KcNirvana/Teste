.class Lcom/npaw/youbora/youboralib/com/Communication$1;
.super Ljava/lang/Object;
.source "Communication.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/com/Communication;->requestData(Ljava/util/Map;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/com/Communication;

.field final synthetic val$callback:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/com/Communication;Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Communication$1;->this$0:Lcom/npaw/youbora/youboralib/com/Communication;

    iput-object p2, p0, Lcom/npaw/youbora/youboralib/com/Communication$1;->val$callback:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication$1;->this$0:Lcom/npaw/youbora/youboralib/com/Communication;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/com/Communication;->receiveData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication$1;->val$callback:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/com/Communication$1;->val$callback:Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;

    invoke-interface {v0, p1, p2}, Lcom/npaw/youbora/youboralib/com/Request$OnSuccessListener;->onSuccess(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    :cond_0
    return-void
.end method
