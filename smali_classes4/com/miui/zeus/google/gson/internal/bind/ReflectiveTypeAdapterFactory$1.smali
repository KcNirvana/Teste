.class Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/miui/zeus/google/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/miui/zeus/google/gson/Gson;

    iput-object p6, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-object p7, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    iput-boolean p8, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object p2, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/miui/zeus/google/gson/Gson;

    iget-object p3, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iget-object p4, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-static {p1, p2, p3, p4}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->access$100(Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/miui/zeus/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/TypeAdapter;->read(Lcom/miui/zeus/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/miui/zeus/google/gson/Gson;

    iget-object v2, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/miui/zeus/google/gson/TypeAdapter;

    iget-object v3, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/miui/zeus/google/gson/reflect/TypeToken;

    invoke-virtual {v3}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/zeus/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/TypeAdapter;->write(Lcom/miui/zeus/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeField(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->serialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
