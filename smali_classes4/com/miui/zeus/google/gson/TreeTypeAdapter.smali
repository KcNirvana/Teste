.class final Lcom/miui/zeus/google/gson/TreeTypeAdapter;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/zeus/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/miui/zeus/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/miui/zeus/google/gson/Gson;

.field private final serializer:Lcom/miui/zeus/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/miui/zeus/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/miui/zeus/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/zeus/google/gson/JsonSerializer;Lcom/miui/zeus/google/gson/JsonDeserializer;Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/miui/zeus/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    iput-object p2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    iput-object p3, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->gson:Lcom/miui/zeus/google/gson/Gson;

    iput-object p4, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->typeToken:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    iput-object p5, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->skipPast:Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/zeus/google/gson/JsonSerializer;Lcom/miui/zeus/google/gson/JsonDeserializer;Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapterFactory;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;-><init>(Lcom/miui/zeus/google/gson/JsonSerializer;Lcom/miui/zeus/google/gson/JsonDeserializer;Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->gson:Lcom/miui/zeus/google/gson/Gson;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->skipPast:Lcom/miui/zeus/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->typeToken:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/miui/zeus/google/gson/Gson;->getDelegateAdapter(Lcom/miui/zeus/google/gson/TypeAdapterFactory;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method

.method public static newFactory(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v6, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V

    return-object v6
.end method

.method public static newFactoryWithMatchRawType(Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    new-instance v0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/miui/zeus/google/gson/TypeAdapterFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/miui/zeus/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    new-instance v6, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V

    return-object v6
.end method


# virtual methods
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->delegate()Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/miui/zeus/google/gson/internal/Streams;->parse(Lcom/miui/zeus/google/gson/stream/JsonReader;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->typeToken:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->gson:Lcom/miui/zeus/google/gson/Gson;

    iget-object v2, v2, Lcom/miui/zeus/google/gson/Gson;->deserializationContext:Lcom/miui/zeus/google/gson/JsonDeserializationContext;

    invoke-interface {v0, p1, v1, v2}, Lcom/miui/zeus/google/gson/JsonDeserializer;->deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->delegate()Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/zeus/google/gson/stream/JsonWriter;->nullValue()Lcom/miui/zeus/google/gson/stream/JsonWriter;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->typeToken:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;->gson:Lcom/miui/zeus/google/gson/Gson;

    iget-object v2, v2, Lcom/miui/zeus/google/gson/Gson;->serializationContext:Lcom/miui/zeus/google/gson/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/miui/zeus/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/JsonSerializationContext;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/zeus/google/gson/internal/Streams;->write(Lcom/miui/zeus/google/gson/JsonElement;Lcom/miui/zeus/google/gson/stream/JsonWriter;)V

    return-void
.end method
