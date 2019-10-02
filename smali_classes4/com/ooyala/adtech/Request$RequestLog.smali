.class Lcom/ooyala/adtech/Request$RequestLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/adtech/Request$RequestLog$Listener;
    }
.end annotation


# instance fields
.field private listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

.field private logItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ooyala/adtech/HTTPRequest$LogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$202(Lcom/ooyala/adtech/Request$RequestLog;Lcom/ooyala/adtech/Request$RequestLog$Listener;)Lcom/ooyala/adtech/Request$RequestLog$Listener;
    .locals 0

    iput-object p1, p0, Lcom/ooyala/adtech/Request$RequestLog;->listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

    return-object p1
.end method


# virtual methods
.method clearLogItems()V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method getLogItem(I)Lcom/ooyala/adtech/HTTPRequest$LogItem;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ooyala/adtech/HTTPRequest$LogItem;

    return-object p1
.end method

.method getLogItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ooyala/adtech/HTTPRequest$LogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method onRequestCreated(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/Request$RequestLog$Listener;->onRequestCreated(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_0
    return-void
.end method

.method onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->listener:Lcom/ooyala/adtech/Request$RequestLog$Listener;

    invoke-interface {v0, p1}, Lcom/ooyala/adtech/Request$RequestLog$Listener;->onRequestFinished(Lcom/ooyala/adtech/HTTPRequest$LogItem;)V

    :cond_0
    return-void
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/Request$RequestLog;->logItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
