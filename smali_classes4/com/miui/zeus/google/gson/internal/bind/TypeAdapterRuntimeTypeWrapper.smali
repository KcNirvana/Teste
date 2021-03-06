.class final Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/miui/zeus/google/gson/TypeAdapter;
.source "TypeAdapterRuntimeTypeWrapper.java"


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
.field private final context:Lcom/miui/zeus/google/gson/Gson;

.field private final delegate:Lcom/miui/zeus/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/zeus/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/miui/zeus/google/gson/Gson;

    iput-object p2, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    iput-object p3, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/miui/zeus/google/gson/Gson;

    invoke-static {v1}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    instance-of v1, v1, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/miui/zeus/google/gson/TypeAdapter;

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
