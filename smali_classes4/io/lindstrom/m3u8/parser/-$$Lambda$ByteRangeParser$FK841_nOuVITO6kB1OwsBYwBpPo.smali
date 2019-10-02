.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;

    invoke-direct {v0}, Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;-><init>()V

    sput-object v0, Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;->INSTANCE:Lio/lindstrom/m3u8/parser/-$$Lambda$ByteRangeParser$FK841_nOuVITO6kB1OwsBYwBpPo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lio/lindstrom/m3u8/parser/ByteRangeParser;->lambda$writeAttributes$0(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
