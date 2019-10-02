.class public final synthetic Lio/lindstrom/m3u8/parser/-$$Lambda$VariantParser$WbgAIEUh-WqDIYfrtYbt4vLklKg;
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

    iput-object p1, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$VariantParser$WbgAIEUh-WqDIYfrtYbt4vLklKg;->f$0:Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/lindstrom/m3u8/parser/-$$Lambda$VariantParser$WbgAIEUh-WqDIYfrtYbt4vLklKg;->f$0:Lio/lindstrom/m3u8/parser/AttributeListBuilder;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lio/lindstrom/m3u8/parser/VariantParser;->lambda$writeAttributes$8(Lio/lindstrom/m3u8/parser/AttributeListBuilder;Ljava/lang/Integer;)V

    return-void
.end method
