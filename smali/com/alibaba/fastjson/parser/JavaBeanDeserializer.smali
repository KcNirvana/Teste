.class public Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private transient smartMatchHashArray:[J

.field private transient smartMatchHashArrayMapping:[I

.field private final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/JavaBeanInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v0, 0x0

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/4 v3, 0x0

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    invoke-virtual {p1, p1, p2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    iget-object v7, v2, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v6

    new-array v6, v6, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    const/4 v3, 0x0

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v6

    :goto_2
    if-ge v3, v5, :cond_3

    iget-object v6, p4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v6, v3

    iget-object v6, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-class v4, Lcom/alibaba/fastjson/JSON;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v53

    :goto_0
    return-object v53

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v49, v0

    const/16 v4, 0x8

    move/from16 v0, v49

    if-ne v0, v4, :cond_2

    const/16 v4, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const/16 v53, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, v37

    iget-boolean v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz p4, :cond_3

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_3
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xd

    move/from16 v0, v49

    if-ne v0, v4, :cond_6

    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-nez p4, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    :cond_4
    if-eqz v11, :cond_5

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v53, p4

    goto :goto_0

    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v49

    if-ne v0, v4, :cond_a

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    if-nez v4, :cond_7

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    :cond_7
    const/16 v35, 0x1

    :goto_1
    if-eqz v35, :cond_a

    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v53

    if-eqz v11, :cond_8

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto :goto_0

    :cond_9
    const/16 v35, 0x0

    goto :goto_1

    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v49

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, v49

    if-eq v0, v4, :cond_11

    :try_start_2
    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    const/16 v53, 0x0

    if-eqz v11, :cond_b

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v49

    if-ne v0, v4, :cond_e

    :try_start_3
    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v53, 0x0

    if-eqz v11, :cond_d

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    :cond_e
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "syntax error, expect {, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_f

    const-string/jumbo v4, ", fieldName "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v11, :cond_10

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v4

    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v50, v0

    const-wide/16 v40, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v47, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v31, v9

    :cond_13
    :goto_3
    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v20, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-eqz v4, :cond_15

    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v21

    if-eqz v21, :cond_14

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    :cond_14
    const-wide/16 v40, 0x0

    :cond_15
    if-nez v21, :cond_16

    move/from16 v0, v24

    move/from16 v1, v47

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v21, v4, v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    add-int/lit8 v24, v24, 0x1

    :cond_16
    :goto_4
    const/16 v39, 0x0

    const/16 v55, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x0

    const-wide/16 v32, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    if-eqz v21, :cond_18

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-wide/from16 v22, v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_17

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1d

    :cond_17
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldInt(J)I

    move-result v30

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1c

    const/16 v39, 0x1

    const/16 v55, 0x1

    :cond_18
    :goto_5
    if-nez v39, :cond_50

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3b

    move-object/from16 v0, v37

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v49, v0

    const/16 v4, 0xd

    move/from16 v0, v49

    if-ne v0, v4, :cond_3a

    const/16 v4, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v31

    :goto_6
    if-nez p4, :cond_73

    if-nez v9, :cond_70

    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    if-nez v11, :cond_19

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    :cond_19
    if-eqz v11, :cond_1a

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v53, p4

    goto/16 :goto_0

    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    :cond_1c
    :try_start_8
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_1d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1e

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_20

    :cond_1e
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldLong(J)J

    move-result-wide v32

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_1f

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto :goto_5

    :cond_1f
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_20
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_22

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_21

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_22
    const-class v4, Ljava/util/Date;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_24

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDate(J)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_23

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_23
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_24
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_25

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_27

    :cond_25
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_26

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_26
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_27
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_28

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2a

    :cond_28
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloat(J)F

    move-result v27

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_29

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_29
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_2a
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_2b

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2d

    :cond_2b
    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDouble(J)D

    move-result-wide v28

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2c

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_2c
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    if-eqz v4, :cond_2f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    if-eqz v4, :cond_2f

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldSymbol(J)J

    move-result-wide v16

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_2e

    const/16 v39, 0x1

    const/16 v55, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v26

    goto/16 :goto_5

    :cond_2e
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_2f
    const-class v4, [I

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_31

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldIntArray(J)[I

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_30

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_30
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_31
    const-class v4, [F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_33

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray(J)[F

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_32

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_32
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_33
    const-class v4, [D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_35

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray(J)[D

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_34

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_34
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_35
    const-class v4, [[F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_37

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldFloatArray2(J)[[F

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_36

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_36
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_37
    const-class v4, [[D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_39

    move-object/from16 v0, v37

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFieldDoubleArray2(J)[[D

    move-result-object v26

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-lez v4, :cond_38

    const/16 v39, 0x1

    const/16 v55, 0x1

    goto/16 :goto_5

    :cond_38
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    move-wide/from16 v40, v0

    goto/16 :goto_3

    :cond_39
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchField(J)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v39, 0x1

    goto/16 :goto_5

    :cond_3a
    const/16 v4, 0x10

    move/from16 v0, v49

    if-eq v0, v4, :cond_13

    :cond_3b
    const-string/jumbo v4, "$ref"

    if-ne v4, v6, :cond_45

    if-eqz v12, :cond_45

    const/16 v4, 0x3a

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v0, v37

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v49, v0

    const/4 v4, 0x4

    move/from16 v0, v49

    if-ne v0, v4, :cond_42

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v4, "@"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    :goto_7
    const/16 v4, 0xd

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_43

    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object/from16 v9, v31

    goto/16 :goto_2

    :cond_3c
    const-string/jumbo v4, ".."

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v0, v12, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    :cond_3d
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_7

    :cond_3e
    const-string/jumbo v4, "$"

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    move-object/from16 v46, v12

    :goto_8
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_3f

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v46, v0

    goto :goto_8

    :cond_3f
    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_40

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    :cond_40
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-direct {v4, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    :cond_41
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v45

    invoke-direct {v4, v12, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto/16 :goto_7

    :cond_42
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v49 .. v49}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_43
    const/16 v4, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v11, :cond_44

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_44
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v53, p4

    goto/16 :goto_0

    :cond_45
    if-eqz v50, :cond_46

    :try_start_9
    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    :cond_46
    const-string/jumbo v4, "@type"

    if-ne v4, v6, :cond_50

    :cond_47
    const/16 v4, 0x3a

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4f

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v52

    const/16 v4, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_48

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_13

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object/from16 v9, v31

    goto/16 :goto_6

    :cond_48
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v5, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v13

    const/16 v54, 0x0

    if-nez v13, :cond_4a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, v52

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v54

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    if-eqz v19, :cond_49

    if-eqz v54, :cond_4d

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4d

    :cond_49
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    :cond_4a
    instance-of v4, v13, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v4, :cond_4e

    move-object v0, v13

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object/from16 v36, v0

    const/4 v4, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    if-eqz v50, :cond_4b

    move-object/from16 v0, v36

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_4b
    :goto_9
    if-eqz v11, :cond_4c

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_4c
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    goto/16 :goto_0

    :cond_4d
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4e
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    goto :goto_9

    :cond_4f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_50
    if-nez p4, :cond_78

    if-nez v31, :cond_78

    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_77

    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_a
    if-nez v14, :cond_51

    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    :cond_51
    :goto_b
    if-eqz v39, :cond_6a

    if-nez v55, :cond_53

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    :cond_52
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6c

    move-object/from16 v31, v9

    goto/16 :goto_3

    :cond_53
    if-nez p4, :cond_5c

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_54

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_56

    :cond_54
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    :cond_55
    :goto_c
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_52

    goto/16 :goto_6

    :cond_56
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_57

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_58

    :cond_57
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    goto :goto_c

    :cond_58
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_59

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5a

    :cond_59
    new-instance v26, Ljava/lang/Float;

    invoke-direct/range {v26 .. v27}, Ljava/lang/Float;-><init>(F)V

    goto :goto_c

    :cond_5a
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5b

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_55

    :cond_5b
    new-instance v26, Ljava/lang/Double;

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :cond_5c
    if-nez v26, :cond_69

    :try_start_c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5d

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5f

    :cond_5d
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_5e

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5e

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v18

    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set property error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_5e
    :try_start_e
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_5f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_60

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_62

    :cond_60
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_61

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_61

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_d

    :cond_61
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_62
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_63

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_65

    :cond_63
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_64

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_64

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;F)V

    goto/16 :goto_d

    :cond_64
    new-instance v4, Ljava/lang/Float;

    move/from16 v0, v27

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_65
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_66

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_68

    :cond_66
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v4, :cond_67

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_67

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_d

    :cond_67
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v28

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_68
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d

    :cond_69
    :try_start_f
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_6a
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v38

    if-nez v38, :cond_6b

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_76

    invoke-virtual/range {v37 .. v37}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_6

    :cond_6b
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_52

    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6c
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6d

    const/16 v4, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_6

    :cond_6d
    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6e

    move-object/from16 v0, v37

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6f

    :cond_6e
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6f
    move-object/from16 v31, v9

    goto/16 :goto_3

    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v0, v4

    move/from16 v47, v0

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v34, 0x0

    :goto_e
    move/from16 v0, v34

    move/from16 v1, v47

    if-ge v0, v1, :cond_72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v34

    iget-object v0, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    if-nez v42, :cond_71

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v42

    :cond_71
    aput-object v42, v43, v34

    add-int/lit8 v34, v34, 0x1

    goto :goto_e

    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v4, :cond_75

    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object p4

    :cond_73
    :goto_f
    if-eqz v11, :cond_74

    move-object/from16 v0, p4

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    :cond_74
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    move-object/from16 v53, p4

    goto/16 :goto_0

    :catch_1
    move-exception v15

    :try_start_11
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_73

    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object p4

    goto :goto_f

    :catch_2
    move-exception v15

    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_76
    move-object/from16 v31, v9

    goto/16 :goto_3

    :cond_77
    move-object/from16 v9, v31

    goto/16 :goto_a

    :cond_78
    move-object/from16 v9, v31

    goto/16 :goto_b
.end method

.method private deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v20

    if-ge v12, v0, :cond_2f

    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    const/16 v19, 0x5d

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object/from16 v23, v0

    aget-object v10, v23, v12

    iget-object v11, v10, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v9, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    :try_start_0
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_7

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    :goto_2
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_3

    const/16 v23, 0x1a

    :goto_3
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const/16 v19, 0x2c

    goto :goto_1

    :cond_2
    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "error"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    :cond_3
    :try_start_1
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_3

    :cond_4
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_5

    const/16 v23, 0x1a

    :goto_5
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_4

    :cond_5
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_5

    :cond_6
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_7
    const-class v23, Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_10

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x22

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v21

    :goto_6
    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_c

    const/16 v23, 0x1a

    :goto_8
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_8
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x6e

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "null"

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_a

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    const/16 v23, 0x1a

    :goto_9
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v21, 0x0

    goto :goto_6

    :cond_9
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_9

    :cond_a
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "not match string. feild : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto/16 :goto_8

    :cond_d
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    const/16 v23, 0x1a

    :goto_a
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_e
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_a

    :cond_f
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_10
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_16

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    :goto_b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_12

    const/16 v23, 0x1a

    :goto_c
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_11
    new-instance v23, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_12
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_c

    :cond_13
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_14

    const/16 v23, 0x1a

    :goto_d
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_14
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_d

    :cond_15
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_16
    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_1c

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean()Z

    move-result v4

    iget-boolean v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    :goto_e
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_18

    const/16 v23, 0x1a

    :goto_f
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_18
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_f

    :cond_19
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_1a

    const/16 v23, 0x1a

    :goto_10
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_1a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_10

    :cond_1b
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_24

    iget-char v5, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1d

    const/16 v22, 0x0

    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_20

    const/16 v23, 0x1a

    :goto_12
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_1d
    invoke-static {v9, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v22

    goto :goto_11

    :cond_1e
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v5, v0, :cond_1f

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v5, v0, :cond_1f

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v10

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;

    iget-object v0, v7, Lcom/alibaba/fastjson/parser/EnumDeserializer;->values:[Ljava/lang/Enum;

    move-object/from16 v23, v0

    aget-object v22, v23, v18

    goto :goto_11

    :cond_1f
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "illegal enum."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_20
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_12

    :cond_21
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_22

    const/16 v23, 0x1a

    :goto_13
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_22
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_13

    :cond_23
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_24
    const-class v23, Ljava/util/Date;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_29

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLongValue()J

    move-result-wide v16

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_25

    const/16 v23, 0x1a

    :goto_14
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_25
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_14

    :cond_26
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_27

    const/16 v23, 0x1a

    :goto_15
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_4

    :cond_27
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_15

    :cond_28
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_4

    :cond_29
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2a

    const/16 v23, 0x1a

    :goto_16
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xe

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_17
    iget-object v0, v11, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/16 v23, 0x5d

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_2a
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_16

    :cond_2b
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x7b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2c

    const/16 v23, 0x1a

    :goto_18
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0xc

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_17

    :cond_2c
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_18

    :cond_2d
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_17

    :cond_2e
    const/16 v23, 0x2c

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2f
    iget-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_30

    const/16 v23, 0x1a

    :goto_19
    move/from16 v0, v23

    iput-char v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1a
    return-object p4

    :cond_30
    iget-object v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_19

    :cond_31
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1a
.end method

.method private parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    if-nez v15, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    new-array v0, v5, [J

    move-object/from16 v19, v0

    const/16 v20, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, v20

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v19, v20

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([J)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-wide/from16 v0, v26

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v25

    if-gez v25, :cond_2

    const-string/jumbo v5, "is"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-wide/from16 v0, v26

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v25

    :cond_2
    if-ltz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    array-length v5, v5

    new-array v0, v5, [I

    move-object/from16 v22, v0

    const/4 v5, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v5

    move/from16 v0, v20

    if-ge v0, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArray:[J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v6, v6, v20

    iget-object v6, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv_64_lower(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v24

    if-ltz v24, :cond_3

    aput v20, v22, v24

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->smartMatchHashArrayMapping:[I

    aget v12, v5, v25

    const/4 v5, -0x1

    if-eq v12, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v15, v5, v12

    :cond_6
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v23, v0

    if-nez v15, :cond_c

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    and-int v5, v5, v23

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v5, v5, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    and-int v5, v5, v23

    if-eqz v5, :cond_c

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v5, :cond_b

    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x1

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v14, v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_a

    aget-object v9, v18, v5

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v7

    if-eqz v7, :cond_9

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    and-int/lit8 v7, v16, 0x10

    if-nez v7, :cond_8

    and-int/lit8 v7, v16, 0x8

    if-nez v7, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c

    instance-of v5, v13, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    if-eqz v5, :cond_d

    move-object v15, v13

    check-cast v15, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    :cond_c
    :goto_4
    if-nez v15, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_5
    return v5

    :cond_d
    move-object v9, v13

    check-cast v9, Ljava/lang/reflect/Field;

    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    new-instance v15, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-direct {v15, v5, v6, v4}, Lcom/alibaba/fastjson/parser/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v5, v0, v15}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_e
    const/16 v5, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/4 v5, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    instance-of v10, p2, Ljava/lang/Class;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v10, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    move v6, v8

    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v9

    invoke-static {v4, v8, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    move v6, v9

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_0

    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-gtz v8, :cond_0

    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v1, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    if-nez v8, :cond_7

    if-eqz v1, :cond_6

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    if-eqz p1, :cond_8

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_8

    aget-object v3, v8, v9

    iget-object v11, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_5

    const-string/jumbo v11, ""

    invoke-virtual {v3, v5, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v11, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v11, v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "create instance error, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_8
    move-object v7, v5

    goto/16 :goto_1
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v17

    const/16 v19, 0x0

    aget-object v13, v17, v19

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    aput-object v16, v17, v19

    move-object/from16 v0, v17

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    iget-object v0, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v13, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v11, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v15, v8

    new-array v14, v15, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_4

    aget-object v7, v8, v9

    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    iget-object v0, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/TypeUtils;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    :cond_3
    aput-object v12, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :cond_5
    return-object v11

    :catch_0
    move-exception v3

    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "create instance error, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 9

    const/4 v7, 0x0

    if-nez p1, :cond_1

    move-object v1, v7

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-boolean v8, v8, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    if-eqz v8, :cond_3

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v8, v4

    iget-object v8, v1, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-gt v5, v3, :cond_6

    add-int v8, v5, v3

    ushr-int/lit8 v6, v8, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v8, v8, v6

    iget-object v8, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    add-int/lit8 v5, v6, 0x1

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    add-int/lit8 v3, v6, -0x1

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v1, v7, v6

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v8, :cond_7

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-object v1, v7

    goto :goto_0

    :cond_7
    move-object v1, v7

    goto :goto_0
.end method

.method protected getFieldDeserializerByHash(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v0, v2, v1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-wide v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .locals 10

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v6, :cond_1

    move-object v2, v5

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v6, p2, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    instance-of v9, v1, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v9, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    iget-object v3, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    iget-object v9, v3, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0, p1, v3, p3}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v5

    goto :goto_0
.end method

.method parseExtra(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11

    iget-object v4, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setter not found, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const/4 v6, 0x0

    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {v2, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    goto :goto_0

    :cond_1
    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    :goto_1
    instance-of v8, p2, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v8, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    invoke-interface {v0, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {v5, p2, p3, v7}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
