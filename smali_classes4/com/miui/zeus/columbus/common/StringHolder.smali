.class public Lcom/miui/zeus/columbus/common/StringHolder;
.super Ljava/lang/Object;
.source "StringHolder.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    const-class v0, Lcom/miui/zeus/columbus/common/StringHolder;

    new-instance v1, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderSerializer;

    invoke-direct {v1}, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderSerializer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Lcom/miui/zeus/google/gson/JsonSerializer;)V

    const-class v0, Lcom/miui/zeus/columbus/common/StringHolder;

    new-instance v1, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderDeserializer;

    invoke-direct {v1}, Lcom/miui/zeus/columbus/common/StringHolder$StringHolderDeserializer;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/zeus/columbus/util/c;->a(Ljava/lang/Class;Lcom/miui/zeus/google/gson/JsonDeserializer;)V

    return-void
.end method
