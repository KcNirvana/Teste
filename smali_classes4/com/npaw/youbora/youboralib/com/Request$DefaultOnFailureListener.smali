.class Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/npaw/youbora/youboralib/com/Request$OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/npaw/youbora/youboralib/com/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultOnFailureListener"
.end annotation


# instance fields
.field private delayBetweenRetries:J

.field private maxRetries:I

.field private request:Lcom/npaw/youbora/youboralib/com/Request;

.field private retries:I

.field final synthetic this$0:Lcom/npaw/youbora/youboralib/com/Request;


# direct methods
.method public constructor <init>(Lcom/npaw/youbora/youboralib/com/Request;Lcom/npaw/youbora/youboralib/com/Request;IJ)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->this$0:Lcom/npaw/youbora/youboralib/com/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I

    iput p3, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->maxRetries:I

    iput-object p2, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->request:Lcom/npaw/youbora/youboralib/com/Request;

    iput-wide p4, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->delayBetweenRetries:J

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/net/HttpURLConnection;)V
    .locals 5

    :try_start_0
    iget p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I

    iget v0, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->maxRetries:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I

    const-string p1, "Request failed. Retrying in %sms (%s of %s)."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->delayBetweenRetries:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->maxRetries:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->warn(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->delayBetweenRetries:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->request:Lcom/npaw/youbora/youboralib/com/Request;

    invoke-virtual {p1}, Lcom/npaw/youbora/youboralib/com/Request;->send()V

    goto :goto_0

    :cond_0
    const-string p1, "Aborting failed request. Max retries reached."

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/String;)V

    iput v1, p0, Lcom/npaw/youbora/youboralib/com/Request$DefaultOnFailureListener;->retries:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
