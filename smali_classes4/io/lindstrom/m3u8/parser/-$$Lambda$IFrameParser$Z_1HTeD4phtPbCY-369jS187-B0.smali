.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$Z_1HTeD4phtPbCY-369jS187-B0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lio/lindstrom/m3u8/parser/AttributeListBuilder;


# direct methods
.method public synthetic constructor <init>(Lio/lindstrom/m3u8/parser/AttributeListBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$Z_1HTeD4phtPbCY-369jS187-B0;->f$0:Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$IFrameParser$Z_1HTeD4phtPbCY-369jS187-B0;->f$0:Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    check-cast p1, Lio/lindstrom/m3u8/model/Resolution;

    invoke-static {v0, p1}, Lio/lindstrom/m3u8/parser/IFrameParser;->lambda$writeAttributes$1(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Lio/lindstrom/m3u8/model/Resolution;)V

    return-void
.end method
