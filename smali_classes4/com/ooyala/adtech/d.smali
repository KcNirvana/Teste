.class final Lcom/ooyala/adtech/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ooyala/pulse/LogListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/adtech/d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/ooyala/pulse/LogItem;)V
    .locals 2

    iget-object v0, p0, Lcom/ooyala/adtech/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ooyala/pulse/LogListener;

    invoke-interface {v1, p1}, Lcom/ooyala/pulse/LogListener;->onLog(Lcom/ooyala/pulse/LogItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/ooyala/pulse/LogListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ooyala/adtech/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
