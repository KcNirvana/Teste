.class public Lcom/miui/zeus/columbus/common/IntHolder;
.super Ljava/lang/Object;
.source "IntHolder.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/common/IntHolder;

    new-instance v1, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderSerializer;

    invoke-direct {v1}, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderSerializer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Lcom/miui/zeus/google/gson/JsonSerializer;)V

    const-class v0, Lcom/miui/zeus/columbus/common/IntHolder;

    new-instance v1, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderDeserializer;

    invoke-direct {v1}, Lcom/miui/zeus/columbus/common/IntHolder$IntHolderDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Lcom/miui/zeus/google/gson/JsonDeserializer;)V

    return-void
.end method
