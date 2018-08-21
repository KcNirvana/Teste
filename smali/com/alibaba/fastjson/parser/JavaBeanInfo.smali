.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v2, 0x0

    if-eqz p7, :cond_2

    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    :goto_0
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    :goto_1
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v1, v7, v6

    iget v9, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    const/4 v3, 0x0

    if-eqz p7, :cond_5

    invoke-interface/range {p7 .. p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v1, v7, v6

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v9, :cond_4

    const/4 v3, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    move-object/from16 v0, p6

    invoke-direct {p0, p5, v0}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_4
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    :goto_5
    iput v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void

    :cond_6
    move-object/from16 p5, p6

    goto :goto_4

    :cond_7
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    goto :goto_5
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 84
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v53

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v68

    const/16 v57, 0x0

    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1

    move-object/from16 v0, v53

    array-length v6, v0

    const/4 v12, 0x1

    if-eq v6, v12, :cond_0

    if-nez v68, :cond_1

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v57

    :goto_0
    if-nez v57, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v6

    if-eqz v6, :cond_1

    and-int/lit8 v6, p1, 0x8

    if-nez v6, :cond_1

    move-object/from16 v0, v53

    array-length v12, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_1

    aget-object v52, v53, v6

    invoke-virtual/range {v52 .. v52}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v79

    move-object/from16 v0, v79

    array-length v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    aget-object v13, v79, v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v57, v52

    :cond_1
    const/4 v15, 0x0

    const/16 v24, 0x0

    if-eqz p3, :cond_5

    const/16 v72, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v55

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-nez v6, :cond_2

    move/from16 v0, p1

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_b

    :cond_2
    const/16 v66, 0x1

    :goto_3
    if-eqz v57, :cond_3

    if-eqz v66, :cond_2c

    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, v53

    array-length v12, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_d

    aget-object v52, v53, v6

    const-class v13, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v33, :cond_f

    if-eqz v15, :cond_c

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "multi-json creator"

    invoke-direct {v6, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v69, Ljava/util/ArrayList;

    invoke-direct/range {v69 .. v69}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v51, p0

    :goto_5
    if-eqz v51, :cond_a

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v51

    if-eq v0, v6, :cond_a

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v56

    move-object/from16 v0, v56

    array-length v12, v0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v12, :cond_9

    aget-object v27, v56, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v73

    and-int/lit8 v13, v73, 0x8

    if-eqz v13, :cond_8

    const-class v13, Lcom/alibaba/fastjson/annotation/JSONCreator;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v24, :cond_6

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "multi-json creator"

    invoke-direct {v6, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    move-object/from16 v24, v27

    :cond_7
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    and-int/lit8 v13, v73, 0x2

    if-nez v13, :cond_7

    move/from16 v0, v73

    and-int/lit16 v13, v0, 0x100

    if-nez v13, :cond_7

    and-int/lit8 v13, v73, 0x4

    if-nez v13, :cond_7

    move-object/from16 v0, v69

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v51

    goto :goto_5

    :cond_a
    invoke-interface/range {v69 .. v69}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/reflect/Method;

    move-object/from16 v72, v0

    move-object/from16 v0, v69

    move-object/from16 v1, v72

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    const/16 v66, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v15, v52

    :cond_d
    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v15, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v79

    if-eqz p6, :cond_10

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v63

    :goto_8
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v77

    const/16 v64, 0x0

    :goto_9
    move-object/from16 v0, v79

    array-length v6, v0

    move/from16 v0, v64

    if-ge v0, v6, :cond_14

    aget-object v78, v77, v64

    const/16 v34, 0x0

    move-object/from16 v0, v78

    array-length v12, v0

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v12, :cond_e

    aget-object v76, v78, v6

    move-object/from16 v0, v76

    instance-of v13, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_11

    move-object/from16 v34, v76

    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_e
    if-nez v34, :cond_12

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "illegal json creator"

    invoke-direct {v6, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_10
    move-object/from16 v63, v79

    goto :goto_8

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    aget-object v7, v79, v64

    aget-object v8, v63, v64

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v49

    invoke-static {v0, v6, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_13
    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v59

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v64, v64, 0x1

    goto :goto_9

    :cond_14
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v17

    array-length v13, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_15

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    :goto_b
    new-instance v12, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    :goto_c
    return-object v12

    :cond_15
    const/16 v19, 0x0

    goto :goto_b

    :cond_16
    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v79

    move-object/from16 v0, v79

    array-length v6, v0

    if-lez v6, :cond_2c

    if-eqz p6, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v62

    :goto_d
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v77

    const/16 v64, 0x0

    :goto_e
    move-object/from16 v0, v79

    array-length v6, v0

    move/from16 v0, v64

    if-ge v0, v6, :cond_1b

    aget-object v78, v77, v64

    const/16 v34, 0x0

    move-object/from16 v0, v78

    array-length v12, v0

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v12, :cond_17

    aget-object v76, v78, v6

    move-object/from16 v0, v76

    instance-of v13, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_19

    move-object/from16 v34, v76

    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_17
    if-nez v34, :cond_1a

    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v12, "illegal json creator"

    invoke-direct {v6, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_18
    move-object/from16 v62, v79

    goto :goto_d

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    aget-object v7, v79, v64

    aget-object v8, v62, v64

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v49

    invoke-static {v0, v6, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v59

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v64, v64, 0x1

    goto :goto_e

    :cond_1b
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v17

    array-length v13, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v18, v17

    :cond_1c
    if-eqz p4, :cond_1d

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    :goto_10
    new-instance v20, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, p0

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    invoke-direct/range {v20 .. v27}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    move-object/from16 v12, v20

    goto/16 :goto_c

    :cond_1d
    const/16 v19, 0x0

    goto :goto_10

    :cond_1e
    if-nez v66, :cond_2c

    if-eqz v68, :cond_2b

    move-object/from16 v0, v53

    array-length v6, v0

    if-lez v6, :cond_2b

    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v80

    if-eqz v80, :cond_2b

    move-object/from16 v0, v53

    array-length v12, v0

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v12, :cond_22

    aget-object v52, v53, v6

    invoke-virtual/range {v52 .. v52}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v79

    move-object/from16 v0, v79

    array-length v13, v0

    if-lez v13, :cond_20

    move-object/from16 v0, v79

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    aget-object v13, v79, v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    :cond_1f
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_20
    if-eqz v15, :cond_21

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    move-object/from16 v0, v79

    array-length v14, v0

    if-ge v13, v14, :cond_1f

    :cond_21
    move-object/from16 v15, v52

    goto :goto_12

    :cond_22
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v15, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v79

    if-eqz p6, :cond_26

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v63

    :goto_13
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v77

    const/16 v64, 0x0

    :goto_14
    move-object/from16 v0, v79

    array-length v6, v0

    move/from16 v0, v64

    if-ge v0, v6, :cond_29

    aget-object v5, v80, v64

    aget-object v78, v77, v64

    const/16 v34, 0x0

    move-object/from16 v0, v78

    array-length v12, v0

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v12, :cond_23

    aget-object v76, v78, v6

    move-object/from16 v0, v76

    instance-of v13, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v13, :cond_27

    move-object/from16 v34, v76

    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_23
    aget-object v7, v79, v64

    aget-object v8, v63, v64

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v49

    invoke-static {v0, v5, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-eqz v9, :cond_24

    if-nez v34, :cond_24

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v34

    check-cast v34, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_24
    if-eqz v34, :cond_28

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v75 .. v75}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_25

    move-object/from16 v5, v75

    :cond_25
    :goto_16
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    move-object/from16 v0, v59

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v64, v64, 0x1

    goto :goto_14

    :cond_26
    move-object/from16 v63, v79

    goto :goto_13

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_28
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_16

    :cond_29
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v17

    array-length v13, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_2a

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    :goto_17
    new-instance v12, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    goto/16 :goto_c

    :cond_2a
    const/16 v19, 0x0

    goto :goto_17

    :cond_2b
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "default constructor not found. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2c
    if-eqz v57, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_2d
    if-nez p3, :cond_3d

    move-object/from16 v0, v72

    array-length v13, v0

    const/4 v6, 0x0

    move v12, v6

    :goto_18
    if-ge v12, v13, :cond_3d

    aget-object v27, v72, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x4

    if-ge v6, v14, :cond_2f

    :cond_2e
    :goto_19
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_18

    :cond_2f
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v81

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v81

    if-eq v0, v6, :cond_30

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, v81

    if-ne v0, v6, :cond_2e

    :cond_30
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_2e

    if-eqz p5, :cond_32

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v33, v6

    :goto_1a
    if-nez v33, :cond_31

    if-eqz p5, :cond_31

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v33

    :cond_31
    if-eqz v33, :cond_33

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v26

    new-instance v25, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v28, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v35, p6

    invoke-direct/range {v25 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v59

    move-object/from16 v1, v25

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_19

    :cond_32
    const/16 v33, 0x0

    goto :goto_1a

    :cond_33
    const-string/jumbo v6, "set"

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v6, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_36

    sget-boolean v6, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v6, :cond_35

    const/4 v6, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v55

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-nez v9, :cond_34

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v6, v6, v14

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v14, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "is"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v55

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    :cond_34
    if-eqz v9, :cond_3b

    if-eqz p5, :cond_39

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v34, v6

    :goto_1c
    if-eqz v34, :cond_3b

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v26

    new-instance v25, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v28, v9

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v35, p6

    invoke-direct/range {v25 .. v35}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v59

    move-object/from16 v1, v25

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_19

    :cond_35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x4

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1b

    :cond_36
    const/16 v6, 0x5f

    move/from16 v0, v48

    if-ne v0, v6, :cond_37

    const/4 v6, 0x4

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1b

    :cond_37
    const/16 v6, 0x66

    move/from16 v0, v48

    if-ne v0, v6, :cond_38

    const/4 v6, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1b

    :cond_38
    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x5

    if-lt v6, v14, :cond_2e

    const/4 v6, 0x4

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v6, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1b

    :cond_39
    const/16 v34, 0x0

    goto/16 :goto_1c

    :cond_3a
    if-nez v33, :cond_3b

    move-object/from16 v33, v34

    :cond_3b
    if-eqz p7, :cond_3c

    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_3c
    new-instance v35, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    const/16 v44, 0x0

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v33

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v59

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_19

    :cond_3d
    new-instance v50, Ljava/util/ArrayList;

    move-object/from16 v0, v55

    array-length v6, v0

    move-object/from16 v0, v50

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v55

    array-length v12, v0

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v12, :cond_43

    aget-object v58, v55, v6

    invoke-virtual/range {v58 .. v58}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v74

    and-int/lit8 v13, v74, 0x8

    if-eqz v13, :cond_3f

    :cond_3e
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3f
    and-int/lit8 v13, v74, 0x10

    if-eqz v13, :cond_41

    invoke-virtual/range {v58 .. v58}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v61

    const-class v13, Ljava/util/Map;

    move-object/from16 v0, v61

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_40

    const-class v13, Ljava/util/Collection;

    move-object/from16 v0, v61

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_42

    :cond_40
    const/16 v83, 0x1

    :goto_1f
    if-eqz v83, :cond_3e

    :cond_41
    invoke-virtual/range {v58 .. v58}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3e

    move-object/from16 v0, v50

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_42
    const/16 v83, 0x0

    goto :goto_1f

    :cond_43
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v47

    :goto_20
    if-eqz v47, :cond_4a

    const-class v6, Ljava/lang/Object;

    move-object/from16 v0, v47

    if-eq v0, v6, :cond_4a

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v13, :cond_49

    aget-object v58, v12, v6

    invoke-virtual/range {v58 .. v58}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v74

    and-int/lit8 v14, v74, 0x8

    if-eqz v14, :cond_45

    :cond_44
    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_45
    and-int/lit8 v14, v74, 0x10

    if-eqz v14, :cond_47

    invoke-virtual/range {v58 .. v58}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v61

    const-class v14, Ljava/util/Map;

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_46

    const-class v14, Ljava/util/Collection;

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_48

    :cond_46
    const/16 v83, 0x1

    :goto_23
    if-eqz v83, :cond_44

    :cond_47
    and-int/lit8 v14, v74, 0x1

    if-eqz v14, :cond_44

    move-object/from16 v0, v50

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_48
    const/16 v83, 0x0

    goto :goto_23

    :cond_49
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v47

    goto :goto_20

    :cond_4a
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4b
    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v60

    const/16 v54, 0x0

    const/16 v64, 0x0

    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v82

    :goto_25
    move/from16 v0, v64

    move/from16 v1, v82

    if-ge v0, v1, :cond_4d

    move-object/from16 v0, v59

    move/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, v67

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v54, 0x1

    :cond_4c
    add-int/lit8 v64, v64, 0x1

    goto :goto_25

    :cond_4d
    if-nez v54, :cond_4b

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v26, v60

    if-eqz p5, :cond_50

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v34, v6

    :goto_26
    if-eqz v34, :cond_4e

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v10

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface/range {v34 .. v34}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v26

    :cond_4e
    if-eqz p7, :cond_4f

    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    :cond_4f
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    new-instance v35, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v37, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v26

    move-object/from16 v38, v9

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v44, v34

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v59

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_24

    :cond_50
    const/16 v34, 0x0

    goto :goto_26

    :cond_51
    if-nez p3, :cond_57

    move-object/from16 v0, v72

    array-length v13, v0

    const/4 v6, 0x0

    move v12, v6

    :goto_27
    if-ge v12, v13, :cond_57

    aget-object v27, v72, v12

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x4

    if-ge v6, v14, :cond_53

    :cond_52
    :goto_28
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_27

    :cond_53
    const-string/jumbo v6, "get"

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v6, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_52

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v71

    const-class v6, Ljava/util/Collection;

    move-object/from16 v0, v71

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_54

    const-class v6, Ljava/util/Map;

    move-object/from16 v0, v71

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_52

    :cond_54
    if-eqz p5, :cond_55

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v33, v6

    :goto_29
    if-eqz v33, :cond_56

    invoke-interface/range {v33 .. v33}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_56

    move-object/from16 v26, v46

    :goto_2a
    new-instance v35, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move-object/from16 v43, v33

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v59

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_28

    :cond_55
    const/16 v33, 0x0

    goto :goto_29

    :cond_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x3

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v14, 0x4

    move-object/from16 v0, v70

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_2a

    :cond_57
    invoke-interface/range {v59 .. v59}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v0, v17

    array-length v6, v0

    new-array v0, v6, [Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v17

    array-length v13, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v6, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_58

    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v19, v6

    :goto_2b
    new-instance v35, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/16 v38, 0x0

    move-object/from16 v36, p0

    move-object/from16 v37, v57

    move-object/from16 v39, v24

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-object/from16 v42, v19

    invoke-direct/range {v35 .. v42}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;)V

    move-object/from16 v12, v35

    goto/16 :goto_c

    :cond_58
    const/16 v19, 0x0

    goto :goto_2b

    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 12

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v9, :cond_0

    move-object v6, p2

    :goto_0
    return-object v6

    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    array-length v9, v8

    if-eqz v9, :cond_14

    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v9, p2

    if-ge v5, v9, :cond_1

    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_4

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_5

    move-object v6, p2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    array-length v9, v8

    array-length v10, p1

    if-ne v9, v10, :cond_c

    const/4 v7, 0x1

    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_6

    aget-object v9, p2, v4

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v7, 0x0

    :cond_6
    if-eqz v7, :cond_8

    move-object v6, p2

    goto :goto_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    array-length v9, p2

    new-array v6, v9, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_b

    const/4 v5, 0x0

    :goto_5
    array-length v9, p2

    if-ge v5, v9, :cond_9

    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v9, p2, v5

    aput-object v9, v6, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    move-object p2, v6

    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    goto :goto_0

    :cond_c
    array-length v9, p2

    new-array v6, v9, [Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v4, 0x0

    :goto_6
    array-length v9, v8

    if-ge v4, v9, :cond_f

    const/4 v5, 0x0

    :goto_7
    array-length v9, p2

    if-ge v5, v9, :cond_d

    aget-object v9, p2, v5

    iget-object v9, v9, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    aget-object v9, p2, v5

    aput-object v9, v6, v4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    array-length v2, v8

    const/4 v4, 0x0

    :goto_8
    array-length v9, p2

    if-ge v4, v9, :cond_13

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_9
    array-length v9, v6

    if-ge v5, v9, :cond_10

    if-ge v5, v2, :cond_10

    aget-object v9, v6, v4

    aget-object v10, p2, v5

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v0, 0x1

    :cond_10
    if-nez v0, :cond_11

    aget-object v9, p2, v4

    aput-object v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_13
    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    :cond_14
    move-object v6, p2

    goto/16 :goto_0
.end method
