.class public final enum Lcom/miui/zeus/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/zeus/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/miui/zeus/google/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/miui/zeus/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->NAME:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "STRING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->STRING:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->NUMBER:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->BOOLEAN:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "NULL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->NULL:Lcom/miui/zeus/google/gson/stream/JsonToken;

    new-instance v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/miui/zeus/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/miui/zeus/google/gson/stream/JsonToken;

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_ARRAY:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_OBJECT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->NAME:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->STRING:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->NUMBER:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->BOOLEAN:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->NULL:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v10

    sget-object v1, Lcom/miui/zeus/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/miui/zeus/google/gson/stream/JsonToken;

    aput-object v1, v0, v11

    sput-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->$VALUES:[Lcom/miui/zeus/google/gson/stream/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/zeus/google/gson/stream/JsonToken;
    .locals 1

    const-class v0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/google/gson/stream/JsonToken;

    return-object p0
.end method

.method public static values()[Lcom/miui/zeus/google/gson/stream/JsonToken;
    .locals 1

    sget-object v0, Lcom/miui/zeus/google/gson/stream/JsonToken;->$VALUES:[Lcom/miui/zeus/google/gson/stream/JsonToken;

    invoke-virtual {v0}, [Lcom/miui/zeus/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/zeus/google/gson/stream/JsonToken;

    return-object v0
.end method
