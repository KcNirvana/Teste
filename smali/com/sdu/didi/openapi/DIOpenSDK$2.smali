.class final Lcom/sdu/didi/openapi/DIOpenSDK$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/DIOpenSDK;->asynGetTicket(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

.field final synthetic c:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->b:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    iput-object p3, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->c:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->b:Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->syncGetTicket(Landroid/content/Context;Lcom/sdu/didi/openapi/DIOpenSDK$TicketType;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->c:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/DIOpenSDK$2;->c:Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;

    invoke-interface {v0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;->onFinish(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK$2;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sdu/didi/openapi/DIOpenSDK$2;->a(Ljava/util/Map;)V

    return-void
.end method
