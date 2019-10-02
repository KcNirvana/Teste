.class Lcom/npaw/youbora/youboralib/com/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/npaw/youbora/youboralib/com/Request;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/npaw/youbora/youboralib/com/Request;


# direct methods
.method constructor <init>(Lcom/npaw/youbora/youboralib/com/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request$1;->this$0:Lcom/npaw/youbora/youboralib/com/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/npaw/youbora/youboralib/com/Request$SendHttpRequestTask;

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/com/Request$1;->this$0:Lcom/npaw/youbora/youboralib/com/Request;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/npaw/youbora/youboralib/com/Request$SendHttpRequestTask;-><init>(Lcom/npaw/youbora/youboralib/com/Request;Lcom/npaw/youbora/youboralib/com/Request$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/com/Request$1;->this$0:Lcom/npaw/youbora/youboralib/com/Request;

    invoke-virtual {v2}, Lcom/npaw/youbora/youboralib/com/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/com/Request$SendHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
