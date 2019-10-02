.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/lindstrom/m3u8/parser/MasterPlaylistParser;

.field private final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;->f$0:Lio/lindstrom/m3u8/parser/MasterPlaylistParser;

    iput-object p2, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;->f$0:Lio/lindstrom/m3u8/parser/MasterPlaylistParser;

    iget-object v1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$MasterPlaylistParser$LzlEpV3SZpngX6UPA1WF4hq52E8;->f$1:Ljava/lang/StringBuilder;

    check-cast p1, Lio/lindstrom/m3u8/model/Variant;

    invoke-static {v0, v1, p1}, Lio/lindstrom/m3u8/parser/MasterPlaylistParser;->lambda$write$1(Lio/lindstrom/m3u8/parser/MasterPlaylistParser;Ljava/lang/StringBuilder;Lio/lindstrom/m3u8/model/Variant;)V

    return-void
.end method
