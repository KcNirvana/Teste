.class public Lcom/ooyala/adtech/LogItem;
.super Lcom/ooyala/pulse/LogItem;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/pulse/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/pulse/Error;)V

    return-void
.end method

.method protected constructor <init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/adtech/Error;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/pulse/LogItem$Source;",
            "Lcom/ooyala/pulse/LogItem$Event;",
            "Lcom/ooyala/adtech/Error;",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ooyala/pulse/LogItem;-><init>(Lcom/ooyala/pulse/LogItem$Source;Lcom/ooyala/pulse/LogItem$Event;Lcom/ooyala/pulse/Error;Ljava/util/List;)V

    return-void
.end method
