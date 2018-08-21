.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    if-eqz p5, :cond_1

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v5, v2

    :goto_0
    const/16 v21, 0x0

    const/16 v20, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v21, 0x0

    :cond_0
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/util/FieldInfo;

    new-instance v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    :goto_3
    if-eqz v19, :cond_3

    const-class v2, Ljava/lang/Object;

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_3

    const-class v2, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v18, :cond_5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_4

    aget-object v15, v3, v2

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v20, 0x0

    goto :goto_1

    :cond_5
    invoke-interface/range {v18 .. v18}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/16 v16, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v16

    :cond_8
    if-eqz v16, :cond_a

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_a

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/util/FieldInfo;

    new-instance v11, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    :goto_6
    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    new-array v0, v2, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v6, v6

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_6

    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_6
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 69
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v42, v0

    if-nez p2, :cond_0

    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v65, v0

    if-eqz v65, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    if-eqz v65, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2

    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v27, v0

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_4

    new-instance v65, Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v66, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v43

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    if-nez v65, :cond_3

    new-instance v65, Ljava/util/IdentityHashMap;

    invoke-direct/range {v65 .. v65}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v66, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_5

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_c

    :cond_5
    const/16 v63, 0x1

    :goto_2
    if-eqz v63, :cond_d

    const/16 v56, 0x5b

    :goto_3
    if-eqz v63, :cond_e

    const/16 v17, 0x5d

    :goto_4
    :try_start_0
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_6

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_f

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_6
    :goto_5
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    aput-char v56, v65, v66

    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    if-lez v65, :cond_7

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_8

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_10

    if-nez p4, :cond_8

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v65, v0

    if-eqz v65, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v65, v0

    if-eqz v65, :cond_10

    :cond_8
    const/16 v29, 0x1

    :goto_6
    if-eqz v29, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    if-eqz v65, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    :goto_7
    const/16 v66, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeName:Ljava/lang/String;

    move-object/from16 v57, v0

    if-nez v57, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v57

    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const/4 v13, 0x1

    :cond_a
    if-eqz v13, :cond_12

    const/16 v54, 0x2c

    :goto_8
    move/from16 v36, v54

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    move-object/from16 v65, v0

    if-eqz v65, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_9
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_13

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v36

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object/from16 v27, v0

    goto/16 :goto_1

    :cond_c
    const/16 v63, 0x0

    goto/16 :goto_2

    :cond_d
    const/16 v56, 0x7b

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x7d

    goto/16 :goto_4

    :cond_f
    :try_start_1
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/16 v37, 0x1

    goto/16 :goto_5

    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    goto :goto_7

    :cond_12
    const/16 v54, 0x0

    goto :goto_8

    :cond_13
    const/16 v65, 0x2c

    move/from16 v0, v36

    move/from16 v1, v65

    if-ne v0, v1, :cond_15

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_16

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_16

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_17

    const/16 v58, 0x1

    :goto_c
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_18

    const/16 v38, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v61, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    :goto_e
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v28

    move/from16 v1, v65

    if-ge v0, v1, :cond_53

    aget-object v23, v27, v28

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_19

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    move/from16 v65, v0

    if-eqz v65, :cond_19

    :cond_14
    :goto_f
    add-int/lit8 v28, v28, 0x1

    goto :goto_e

    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_17
    const/16 v58, 0x0

    goto :goto_c

    :cond_18
    const/16 v38, 0x0

    goto :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    if-eqz v65, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_14

    :cond_1a
    const/4 v9, 0x1

    if-eqz v25, :cond_1c

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :cond_1b
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_1c

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v66

    if-nez v66, :cond_1b

    const/4 v9, 0x0

    :cond_1c
    if-eqz v9, :cond_14

    const/16 v46, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v62, 0x0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v65, v0

    if-eqz v65, :cond_23

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_20

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v49

    const/16 v62, 0x1

    :goto_10
    const/4 v8, 0x1

    if-eqz v45, :cond_5b

    if-eqz v62, :cond_5a

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_24

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :cond_1d
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_1e

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v66

    if-nez v66, :cond_1d

    const/4 v8, 0x0

    :cond_1e
    :goto_12
    if-eqz v8, :cond_14

    move-object/from16 v31, v22

    if-eqz v35, :cond_28

    if-eqz v62, :cond_1f

    if-nez v48, :cond_1f

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_26

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    :cond_1f
    :goto_13
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_14
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_28

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/alibaba/fastjson/serializer/NameFilter;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    goto :goto_14

    :cond_20
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v50

    const/16 v62, 0x1

    goto/16 :goto_10

    :cond_21
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v47

    const/16 v62, 0x1

    goto/16 :goto_10

    :cond_22
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    const/16 v48, 0x1

    goto/16 :goto_10

    :cond_23
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    const/16 v48, 0x1

    goto/16 :goto_10

    :cond_24
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_25

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_11

    :cond_25
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_5a

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_11

    :cond_26
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_27

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_13

    :cond_27
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_1f

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_13

    :cond_28
    if-eqz v61, :cond_2b

    if-eqz v62, :cond_59

    if-nez v48, :cond_59

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_29

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v41, v46

    const/16 v48, 0x1

    move-object/from16 v66, v46

    :goto_15
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_16
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_2c

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/alibaba/fastjson/serializer/ValueFilter;

    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v66

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v66, v46

    goto :goto_16

    :cond_29
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_2a

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v41, v46

    const/16 v48, 0x1

    move-object/from16 v66, v46

    goto :goto_15

    :cond_2a
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_59

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    move-object/from16 v41, v46

    const/16 v48, 0x1

    move-object/from16 v66, v46

    goto :goto_15

    :cond_2b
    move-object/from16 v66, v41

    :cond_2c
    if-eqz v48, :cond_2d

    if-nez v66, :cond_2d

    if-nez v63, :cond_2d

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    move/from16 v65, v0

    if-nez v65, :cond_2d

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_14

    :cond_2d
    if-eqz v48, :cond_30

    if-eqz v66, :cond_30

    if-eqz v38, :cond_30

    sget-object v65, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2e

    sget-object v65, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2e

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2e

    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2e

    sget-object v65, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2e

    sget-object v65, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_2f

    :cond_2e
    move-object/from16 v0, v66

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v65, v0

    if-eqz v65, :cond_2f

    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Number;->byteValue()B

    move-result v65

    if-eqz v65, :cond_14

    :cond_2f
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_30

    move-object/from16 v0, v66

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v65, v0

    if-eqz v65, :cond_30

    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v65

    if-eqz v65, :cond_14

    :cond_30
    if-eqz v13, :cond_32

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_31

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_35

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_31
    :goto_17
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    const/16 v68, 0x2c

    aput-char v68, v65, v67

    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_32
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_36

    if-nez v63, :cond_33

    const/16 v65, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    :cond_33
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    :cond_34
    :goto_18
    const/4 v13, 0x1

    goto/16 :goto_f

    :cond_35
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/16 v37, 0x1

    goto :goto_17

    :cond_36
    move-object/from16 v0, v41

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_39

    if-nez v63, :cond_37

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    :cond_37
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_18

    :catch_0
    move-exception v15

    :try_start_2
    const-string/jumbo v18, "write javaBean error"

    if-eqz p3, :cond_38

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string/jumbo v66, ", fieldName : "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_38
    new-instance v65, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v65
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v65

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v65

    :cond_39
    if-nez v63, :cond_3b

    if-eqz v14, :cond_3d

    :try_start_3
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->name_chars:[C

    const/16 v40, 0x0

    array-length v0, v11

    move/from16 v32, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v65, v0

    add-int v37, v65, v32

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_3a

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_3c

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_3a
    :goto_19
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v65

    move/from16 v2, v67

    move/from16 v3, v32

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :cond_3b
    :goto_1a
    if-eqz v62, :cond_47

    if-nez v48, :cond_47

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_44

    const/high16 v65, -0x80000000

    move/from16 v0, v49

    move/from16 v1, v65

    if-ne v0, v1, :cond_3e

    const-string/jumbo v65, "-2147483648"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_3c
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    sub-int v53, v65, v67

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v65

    move/from16 v2, v67

    move/from16 v3, v53

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int v32, v32, v53

    add-int v40, v40, v53

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v32

    move/from16 v1, v65

    if-gt v0, v1, :cond_3c

    move/from16 v37, v32

    goto/16 :goto_19

    :cond_3d
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_1a

    :cond_3e
    if-gez v49, :cond_41

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v64, v0

    :goto_1b
    const/16 v30, 0x0

    :goto_1c
    sget-object v65, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    aget v65, v65, v30

    move/from16 v0, v64

    move/from16 v1, v65

    if-gt v0, v1, :cond_42

    add-int/lit8 v55, v30, 0x1

    if-gez v49, :cond_3f

    add-int/lit8 v55, v55, 0x1

    :cond_3f
    const/16 v26, 0x0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v65, v0

    add-int v37, v65, v55

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_40

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_43

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_40
    :goto_1d
    if-nez v26, :cond_34

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-wide/from16 v0, v66

    move/from16 v2, v37

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    goto/16 :goto_18

    :cond_41
    move/from16 v64, v49

    goto :goto_1b

    :cond_42
    add-int/lit8 v30, v30, 0x1

    goto :goto_1c

    :cond_43
    move/from16 v0, v55

    new-array v12, v0, [C

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v0, v66

    move/from16 v2, v55

    invoke-static {v0, v1, v2, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    const/16 v65, 0x0

    array-length v0, v12

    move/from16 v66, v0

    move-object/from16 v0, v42

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    const/16 v26, 0x1

    goto :goto_1d

    :cond_44
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_45

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto/16 :goto_18

    :cond_45
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_34

    if-eqz v47, :cond_46

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    const/16 v67, 0x0

    sget-object v68, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->true_chars:[C

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    invoke-virtual/range {v65 .. v68}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_18

    :cond_46
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    const/16 v67, 0x0

    sget-object v68, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->false_chars:[C

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    invoke-virtual/range {v65 .. v68}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_18

    :cond_47
    if-nez v63, :cond_52

    const-class v65, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_4c

    if-nez v66, :cond_4a

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_48

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_49

    :cond_48
    const-string/jumbo v65, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_49
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_18

    :cond_4a
    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/String;

    move-object/from16 v52, v0

    if-eqz v58, :cond_4b

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_4b
    const/16 v65, 0x0

    const/16 v66, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_18

    :cond_4c
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    move/from16 v65, v0

    if-eqz v65, :cond_51

    if-eqz v66, :cond_50

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_4f

    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_4d

    const/16 v59, 0x1

    :goto_1e
    if-eqz v59, :cond_4e

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_4d
    const/16 v59, 0x0

    goto :goto_1e

    :cond_4e
    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_18

    :cond_4f
    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v65

    move-object/from16 v0, v42

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto/16 :goto_18

    :cond_50
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_18

    :cond_51
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_52
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_53
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    move-object/from16 v65, v0

    if-eqz v65, :cond_55

    if-eqz v13, :cond_54

    const/16 v7, 0x2c

    :goto_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_20
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_55

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/serializer/AfterFilter;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1, v7}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v7

    goto :goto_20

    :cond_54
    const/4 v7, 0x0

    goto :goto_1f

    :cond_55
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    if-lez v65, :cond_56

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_56

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    :cond_56
    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_57

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_58

    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_57
    :goto_21
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v66, v0

    aput-char v17, v65, v66

    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0

    :cond_58
    :try_start_4
    invoke-virtual/range {v42 .. v42}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v37, 0x1

    goto :goto_21

    :cond_59
    move-object/from16 v66, v41

    goto/16 :goto_15

    :cond_5a
    move-object/from16 v41, v46

    goto/16 :goto_11

    :cond_5b
    move-object/from16 v41, v46

    goto/16 :goto_12
.end method
