.class public final Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field private final constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;


# direct methods
.method public constructor <init>(Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;Lcom/miui/zeus/google/gson/FieldNamingStrategy;Lcom/miui/zeus/google/gson/internal/Excluder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    iput-object p3, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldAdapter(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method private createBoundField(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZZ)Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;ZZ)",
            "Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;Z)V

    return-object v0
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLcom/miui/zeus/google/gson/internal/Excluder;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/miui/zeus/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/miui/zeus/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getBoundFields(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v10, v0, :cond_7

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    const/4 v0, 0x1

    invoke-virtual {v7, v6, v0}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    invoke-virtual {v7, v6, v14}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v1, :cond_1

    if-nez v16, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v11}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v10, v2}, Lcom/miui/zeus/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    invoke-direct {v7, v6}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    move-object v3, v0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    const/16 v18, 0x0

    goto :goto_3

    :cond_2
    move/from16 v18, v1

    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v20, v2

    move-object v2, v6

    move-object v14, v3

    move-object/from16 v3, v20

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/miui/zeus/google/gson/reflect/TypeToken;ZZ)Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v14, :cond_3

    move-object v3, v0

    goto :goto_4

    :cond_3
    move-object v3, v14

    :goto_4
    add-int/lit8 v4, v21, 0x1

    move/from16 v1, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move-object v14, v3

    if-nez v14, :cond_5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v11}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/miui/zeus/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/reflect/TypeToken;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v10

    goto/16 :goto_0

    :cond_7
    return-object v8
.end method

.method private getFieldAdapter(Lcom/miui/zeus/google/gson/Gson;Ljava/lang/reflect/Field;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "*>;)",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/miui/zeus/google/gson/annotations/JsonAdapter;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/miui/zeus/google/gson/annotations/JsonAdapter;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    invoke-static {v0, p1, p3, p2}, Lcom/miui/zeus/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Lcom/miui/zeus/google/gson/annotations/JsonAdapter;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1, p3}, Lcom/miui/zeus/google/gson/Gson;->getAdapter(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p1

    return-object p1
.end method

.method static getFieldName(Lcom/miui/zeus/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/zeus/google/gson/FieldNamingStrategy;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/miui/zeus/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/zeus/google/gson/annotations/SerializedName;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/zeus/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/miui/zeus/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/miui/zeus/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/miui/zeus/google/gson/FieldNamingStrategy;

    invoke-static {v0, p1}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Lcom/miui/zeus/google/gson/FieldNamingStrategy;Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 4
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

    invoke-virtual {p2}, Lcom/miui/zeus/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/miui/zeus/google/gson/internal/ConstructorConstructor;->get(Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/internal/ObjectConstructor;

    move-result-object v1

    new-instance v3, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, v1, p1, v2}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/miui/zeus/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    return-object v3
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/miui/zeus/google/gson/internal/Excluder;

    invoke-static {p1, p2, v0}, Lcom/miui/zeus/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;ZLcom/miui/zeus/google/gson/internal/Excluder;)Z

    move-result p1

    return p1
.end method
