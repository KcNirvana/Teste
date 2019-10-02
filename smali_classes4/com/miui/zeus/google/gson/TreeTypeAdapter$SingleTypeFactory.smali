.class Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field private final deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/miui/zeus/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/miui/zeus/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/miui/zeus/google/gson/JsonSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/zeus/google/gson/JsonSerializer;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    instance-of v0, p1, Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/miui/zeus/google/gson/JsonDeserializer;

    :cond_1
    iput-object v1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    iget-object p1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Lcom/miui/zeus/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    iput-object p2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    iput-boolean p3, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    iput-object p4, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v0, p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/zeus/google/gson/TreeTypeAdapter;

    iget-object v2, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/miui/zeus/google/gson/JsonSerializer;

    iget-object v3, p0, Lcom/miui/zeus/google/gson/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/miui/zeus/google/gson/JsonDeserializer;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/zeus/google/gson/TreeTypeAdapter;-><init>(Lcom/miui/zeus/google/gson/JsonSerializer;Lcom/miui/zeus/google/gson/JsonDeserializer;Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/TypeAdapterFactory;Lcom/miui/zeus/google/gson/TreeTypeAdapter$1;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
