.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_1

    const/16 v18, 0x1

    :goto_0
    const/4 v6, 0x0

    if-eqz v18, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    :cond_0
    if-nez p2, :cond_3

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_2

    const-string/jumbo v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v19, "[]"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-nez v19, :cond_6

    new-instance v19, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    new-instance v19, Ljava/util/IdentityHashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 v10, 0x0

    :try_start_0
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_b

    const/16 v19, 0x5b

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v15, :cond_a

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_7

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    if-eqz v8, :cond_9

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v9, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v8, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v19

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v19

    :cond_9
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    const/16 v19, 0x5d

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    :cond_b
    :try_start_2
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_c

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_f

    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_c
    :goto_4
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    const/16 v21, 0x5b

    aput-char v21, v19, v20

    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_19

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_e

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_d

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_10

    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_d
    :goto_6
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    const/16 v21, 0x2c

    aput-char v21, v19, v20

    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :cond_e
    if-nez v8, :cond_11

    const-string/jumbo v19, "null"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v13, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    const/4 v13, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_12

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_7

    :cond_12
    const-class v19, Ljava/lang/Long;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_14

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    if-eqz v18, :cond_13

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v19, 0x4c

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    :cond_13
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_7

    :cond_14
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v19

    if-ne v4, v0, :cond_16

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-eqz v19, :cond_15

    invoke-virtual {v14, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v11, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_7

    :cond_16
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    move/from16 v19, v0

    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v20, v0

    and-int v19, v19, v20

    if-nez v19, :cond_17

    new-instance v9, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v9, v5, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-object/from16 v19, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v8, v1, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_7

    :cond_19
    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, 0x1

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v13, v0, :cond_1a

    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    move-object/from16 v19, v0

    if-nez v19, :cond_1b

    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_1a
    :goto_8
    iget-object v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move-object/from16 v19, v0

    iget v0, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move/from16 v20, v0

    const/16 v21, 0x5d

    aput-char v21, v19, v20

    iput v13, v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_1

    :cond_1b
    :try_start_3
    invoke-virtual {v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v13, 0x1

    goto :goto_8
.end method
