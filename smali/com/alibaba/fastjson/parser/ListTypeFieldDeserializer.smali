.class Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ListTypeFieldDeserializer.java"


# instance fields
.field private final array:Z

.field private deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    const/16 v2, 0xe

    invoke-direct {p0, p2, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    goto :goto_0
.end method


# virtual methods
.method final parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    :cond_0
    const/4 v12, -0x1

    if-eqz v11, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    :goto_0
    if-ge v4, v15, :cond_1

    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move v12, v4

    :cond_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object v8, v18, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    if-nez v9, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->deserializer:Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    :cond_3
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object v14, v8

    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x0

    aget-object v18, v7, v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v18, 0x0

    aget-object v16, v7, v18

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    const/4 v11, 0x0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    :cond_6
    const/4 v12, -0x1

    if-eqz v11, :cond_7

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    :goto_3
    if-ge v4, v15, :cond_7

    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move v12, v4

    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    const/16 v18, 0x0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    aget-object v19, v19, v12

    aput-object v19, v7, v18

    new-instance v8, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v7, v0, v1}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "exepct \'[\', but "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_a

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", type : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_a
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_b
    iget-char v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_c

    const/16 v18, 0x1a

    :goto_4
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_5
    const/4 v4, 0x0

    :goto_6
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_6

    :cond_c
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_4

    :cond_d
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_e

    const/16 v18, 0x1a

    :goto_7
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    :cond_e
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_7

    :cond_f
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_5

    :cond_10
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_11

    const/16 v18, 0x1a

    :goto_8
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0xf

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_5

    :cond_11
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_8

    :cond_12
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_5

    :cond_13
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    iget-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_1c

    const/16 v18, 0x1a

    :goto_9
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    :cond_15
    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    iget-char v2, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_18

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_17

    const/16 v18, 0x1a

    :goto_a
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :cond_16
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_17
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_a

    :cond_18
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_19

    const/16 v18, 0x1a

    :goto_c
    move/from16 v0, v18

    iput-char v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    :cond_19
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_c

    :cond_1a
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_1b

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_b

    :cond_1b
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_b

    :cond_1c
    iget-object v0, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto/16 :goto_9

    :cond_1d
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iget-boolean v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v7, :cond_2

    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v5, v3

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    :goto_1
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, p1, p3, v5}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->parseArray(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    iget-boolean v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->array:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->itemType:Ljava/lang/reflect/Type;

    check-cast v7, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    :goto_2
    if-nez p2, :cond_4

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    move-object v2, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/parser/ListTypeFieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
