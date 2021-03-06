.class public final Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    iput-boolean p2, p0, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return p0
.end method

.method private getKeyAdapter(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/miui/zeus/google/gson/TypeAdapter;

    :goto_1
    return-object p1
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 11
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

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/miui/zeus/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v9

    iget-object v3, p0, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, p2}, Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;->get(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/internal/ObjectConstructor;

    move-result-object v10

    new-instance p2, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/miui/zeus/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/TypeAdapter;Lcom/miui/zeus/google/gson/internal/ObjectConstructor;)V

    return-object p2
.end method
