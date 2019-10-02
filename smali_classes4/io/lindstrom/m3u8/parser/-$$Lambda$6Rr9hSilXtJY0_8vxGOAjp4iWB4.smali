.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$6Rr9hSilXtJY0_8vxGOAjp4iWB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lio/lindstrom/m3u8/parser/ByteRangeParser;


# direct methods
.method public synthetic constructor <init>(Lio/lindstrom/m3u8/parser/ByteRangeParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$6Rr9hSilXtJY0_8vxGOAjp4iWB4;->f$0:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$6Rr9hSilXtJY0_8vxGOAjp4iWB4;->f$0:Lio/lindstrom/m3u8/parser/ByteRangeParser;

    check-cast p1, Lio/lindstrom/m3u8/model/ByteRange;

    invoke-virtual {v0, p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->writeAttributes(Lio/lindstrom/m3u8/model/ByteRange;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
