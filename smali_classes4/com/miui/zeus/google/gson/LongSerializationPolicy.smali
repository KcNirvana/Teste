.class public abstract enum Lcom/miui/zeus/google/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/zeus/google/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/zeus/google/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/miui/zeus/google/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/zeus/google/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    new-instance v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy$2;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/zeus/google/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->STRING:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    sget-object v1, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->STRING:Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->$VALUES:[Lcom/miui/zeus/google/gson/LongSerializationPolicy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/miui/zeus/google/gson/LongSerializationPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/zeus/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/zeus/google/gson/LongSerializationPolicy;
    .locals 1

    const-class v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    return-object p0
.end method

.method public static values()[Lcom/miui/zeus/google/gson/LongSerializationPolicy;
    .locals 1

    sget-object v0, Lcom/miui/zeus/google/gson/LongSerializationPolicy;->$VALUES:[Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/miui/zeus/google/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/zeus/google/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/miui/zeus/google/gson/JsonElement;
.end method
