.class public final Lcom/miui/zeus/google/gson/internal/bind/CollectionTypeAdapterFactory;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    return-void
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 3
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

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lcom/miui/zeus/google/gson/internal/$Gson$Types;->getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/google/gson/internal/bind/CollectionTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, p2}, Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;->get(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/internal/ObjectConstructor;

    move-result-object p2

    new-instance v2, Lcom/miui/zeus/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/miui/zeus/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;-><init>(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/miui/zeus/google/gson/TypeAdapter;Lcom/miui/zeus/google/gson/internal/ObjectConstructor;)V

    return-object v2
.end method
