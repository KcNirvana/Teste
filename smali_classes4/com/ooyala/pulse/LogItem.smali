.class public Lcom/ooyala/pulse/LogItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/LogItem$Event;,
        Lcom/ooyala/pulse/LogItem$Source;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ooyala/pulse/LogItem$Event;

.field private final c:Lcom/ooyala/pulse/LogItem$Source;

.field private final d:Lcom/ooyala/pulse/Error;


# direct methods
.method public constructor <init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/pulse/Error;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/ooyala/pulse/LogItem;->c:Lcom/ooyala/pulse/LogItem$Source;

    iput-object p2, p0, Lcom/ooyala/pulse/LogItem;->b:Lcom/ooyala/pulse/LogItem$Event;

    iput-object p3, p0, Lcom/ooyala/pulse/LogItem;->d:Lcom/ooyala/pulse/Error;

    return-void
.end method

.method public constructor <init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/pulse/Error;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/pulse/LogItem$Source;",
            "Lcom/ooyala/pulse/LogItem$Event;",
            "Lcom/ooyala/pulse/Error;",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/ooyala/pulse/LogItem;->c:Lcom/ooyala/pulse/LogItem$Source;

    iput-object p2, p0, Lcom/ooyala/pulse/LogItem;->b:Lcom/ooyala/pulse/LogItem$Event;

    iput-object p3, p0, Lcom/ooyala/pulse/LogItem;->d:Lcom/ooyala/pulse/Error;

    if-eqz p4, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    iput-object p1, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getError()Lcom/ooyala/pulse/Error;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->d:Lcom/ooyala/pulse/Error;

    return-object v0
.end method

.method public getEvent()Lcom/ooyala/pulse/LogItem$Event;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->b:Lcom/ooyala/pulse/LogItem$Event;

    return-object v0
.end method

.method public getSource()Lcom/ooyala/pulse/LogItem$Source;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->c:Lcom/ooyala/pulse/LogItem$Source;

    return-object v0
.end method

.method public getThirdPartySourceURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "[%s/%s] %s %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ooyala/pulse/LogItem;->c:Lcom/ooyala/pulse/LogItem$Source;

    invoke-virtual {v6}, Lcom/ooyala/pulse/LogItem$Source;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/ooyala/pulse/LogItem;->b:Lcom/ooyala/pulse/LogItem$Event;

    invoke-virtual {v3}, Lcom/ooyala/pulse/LogItem$Event;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/ooyala/pulse/LogItem;->d:Lcom/ooyala/pulse/Error;

    invoke-virtual {v2}, Lcom/ooyala/pulse/Error;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/ooyala/pulse/LogItem;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[%s/%s] %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ooyala/pulse/LogItem;->c:Lcom/ooyala/pulse/LogItem$Source;

    invoke-virtual {v5}, Lcom/ooyala/pulse/LogItem$Source;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/ooyala/pulse/LogItem;->b:Lcom/ooyala/pulse/LogItem$Event;

    invoke-virtual {v3}, Lcom/ooyala/pulse/LogItem$Event;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/ooyala/pulse/LogItem;->d:Lcom/ooyala/pulse/Error;

    invoke-virtual {v2}, Lcom/ooyala/pulse/Error;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
