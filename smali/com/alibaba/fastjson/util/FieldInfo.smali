.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_1

    const-class v5, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v6, v0

    xor-long/2addr v2, v6

    const-wide v6, 0x100000001b3L

    mul-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_2

    :cond_4
    iput-wide v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_0

    const/4 v8, 0x0

    :cond_0
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    if-eqz p2, :cond_1

    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    :cond_1
    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_3
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v12, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    xor-long v10, v10, v22

    const-wide v22, 0x100000001b3L

    mul-long v10, v10, v22

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    const/16 v22, 0x0

    aget-object v6, v17, v22

    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_7

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_7
    move-object v7, v6

    :goto_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    :goto_7
    if-eqz p4, :cond_17

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_17

    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v22, v0

    if-eqz v22, :cond_17

    move-object/from16 v20, v7

    check-cast v20, Ljava/lang/reflect/TypeVariable;

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p5

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v18, p5

    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_8
    move-object/from16 v5, p4

    :goto_8
    if-eqz v5, :cond_13

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_13

    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-object/from16 v3, v16

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    :cond_a
    if-eqz p10, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v7, v22, v23

    :goto_9
    goto :goto_5

    :cond_b
    move-object v7, v6

    goto :goto_9

    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_d

    move-object v7, v6

    :goto_a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto/16 :goto_6

    :cond_d
    if-eqz p10, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    :goto_b
    goto :goto_a

    :cond_e
    move-object v7, v6

    goto :goto_b

    :cond_f
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-nez v22, :cond_10

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_10

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_11

    :cond_10
    move-object v7, v6

    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto/16 :goto_7

    :cond_11
    if-eqz p10, :cond_12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    :goto_d
    goto :goto_c

    :cond_12
    move-object v7, v6

    goto :goto_d

    :cond_13
    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v21

    const/4 v13, 0x0

    :goto_e
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_14

    aget-object v22, v21, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    aget-object v9, v3, v13

    :cond_14
    if-eqz v9, :cond_17

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_16

    const-class v22, Lcom/alibaba/fastjson/JSONAware;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_16

    const/16 v22, 0x1

    :goto_f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    :goto_10
    return-void

    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_16
    const/16 v22, 0x0

    goto :goto_f

    :cond_17
    move-object v9, v7

    instance-of v0, v7, Ljava/lang/Class;

    move/from16 v22, v0

    if-nez v22, :cond_18

    if-eqz p5, :cond_19

    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    if-eq v9, v7, :cond_18

    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    :cond_18
    :goto_12
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-nez v22, :cond_1b

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_1b

    const-class v22, Lcom/alibaba/fastjson/JSONAware;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_1b

    const/16 v22, 0x1

    :goto_13
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    goto :goto_10

    :cond_19
    move-object/from16 p5, p4

    goto :goto_11

    :cond_1a
    instance-of v0, v9, Ljava/lang/Class;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_12

    :cond_1b
    const/16 v22, 0x0

    goto :goto_13
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    :goto_0
    return-object v9

    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    if-eq v6, v7, :cond_2

    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object/from16 v9, p2

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v9, p2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v16, p2

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v18, v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    move-object/from16 v9, p2

    goto :goto_0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v13, p1

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    :cond_7
    :goto_2
    const/4 v11, 0x0

    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    if-eqz v13, :cond_c

    aget-object v8, v4, v11

    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-nez v3, :cond_8

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_8
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    goto :goto_2

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_c
    if-eqz v5, :cond_d

    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object/from16 v9, p2

    goto/16 :goto_0

    :cond_d
    move-object/from16 v9, p2

    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
