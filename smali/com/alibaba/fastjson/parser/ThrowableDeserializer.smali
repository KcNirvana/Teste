.class public Lcom/alibaba/fastjson/parser/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
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

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :cond_2
    const/4 v4, 0x0

    const/4 v12, 0x0

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Class;

    const-class v20, Ljava/lang/Throwable;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object v12, v6

    :cond_3
    const/16 v16, 0x0

    const/16 v19, 0x0

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_1
    const/4 v10, 0x0

    if-nez v12, :cond_f

    new-instance v10, Ljava/lang/Exception;

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0

    :cond_5
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xc

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_6
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    :cond_7
    const/16 v20, 0x3a

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const-string/jumbo v20, "@type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_3
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0xd

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_1

    :cond_8
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_9
    const-string/jumbo v20, "message"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    :cond_a
    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_b
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "syntax error"

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_c
    const-string/jumbo v20, "cause"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x0

    const-string/jumbo v21, "cause"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_3

    :cond_d
    const-string/jumbo v20, "stackTrace"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-class v20, [Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/StackTraceElement;

    goto/16 :goto_3

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_f
    const/4 v8, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v12}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    aget-object v7, v21, v20

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_11

    move-object v8, v7

    :cond_10
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    move-object/from16 v17, v7

    goto :goto_6

    :cond_12
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const-class v24, Ljava/lang/Throwable;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    move-object v5, v7

    goto :goto_6

    :cond_13
    if-eqz v5, :cond_14

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v10

    :goto_7
    if-nez v11, :cond_16

    :try_start_1
    new-instance v10, Ljava/lang/Exception;

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :cond_14
    if-eqz v17, :cond_15

    const/16 v20, 0x1

    :try_start_2
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0

    move-object v11, v10

    goto :goto_7

    :cond_15
    if-eqz v8, :cond_17

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/Throwable;

    move-object v10, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v10

    goto :goto_7

    :catch_0
    move-exception v9

    :goto_8
    new-instance v20, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v21, "create instance error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :catch_1
    move-exception v9

    move-object v10, v11

    goto :goto_8

    :cond_16
    move-object v10, v11

    goto/16 :goto_2

    :cond_17
    move-object v11, v10

    goto :goto_7
.end method
