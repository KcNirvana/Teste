.class final Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_1

    iget v14, v12, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v15, v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_0

    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    instance-of v14, v0, [Z

    if-eqz v14, :cond_4

    check-cast p2, [Z

    move-object/from16 v4, p2

    check-cast v4, [Z

    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_1
    array-length v14, v4

    if-ge v8, v14, :cond_3

    if-eqz v8, :cond_2

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_2
    aget-boolean v14, v4, v8

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    instance-of v14, v0, [B

    if-eqz v14, :cond_5

    check-cast p2, [B

    move-object/from16 v4, p2

    check-cast v4, [B

    invoke-virtual {v12, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p2

    instance-of v14, v0, [C

    if-eqz v14, :cond_6

    check-cast p2, [C

    move-object/from16 v5, p2

    check-cast v5, [C

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p2

    instance-of v14, v0, [D

    if-eqz v14, :cond_b

    check-cast p2, [D

    move-object/from16 v4, p2

    check-cast v4, [D

    array-length v13, v4

    add-int/lit8 v7, v13, -0x1

    const/4 v14, -0x1

    if-ne v7, v14, :cond_7

    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    :cond_7
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_9

    aget-wide v10, v4, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_3
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_3

    :cond_9
    aget-wide v10, v4, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_4
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_4

    :cond_b
    move-object/from16 v0, p2

    instance-of v14, v0, [F

    if-eqz v14, :cond_10

    check-cast p2, [F

    move-object/from16 v4, p2

    check-cast v4, [F

    array-length v13, v4

    add-int/lit8 v7, v13, -0x1

    const/4 v14, -0x1

    if-ne v7, v14, :cond_c

    const-string/jumbo v14, "[]"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_0

    :cond_c
    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_e

    aget v10, v4, v8

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_6
    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_d
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_6

    :cond_e
    aget v10, v4, v7

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_7
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_7

    :cond_10
    move-object/from16 v0, p2

    instance-of v14, v0, [I

    if-eqz v14, :cond_13

    check-cast p2, [I

    move-object/from16 v4, p2

    check-cast v4, [I

    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_8
    array-length v14, v4

    if-ge v8, v14, :cond_12

    if-eqz v8, :cond_11

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_11
    aget v14, v4, v8

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p2

    instance-of v14, v0, [J

    if-eqz v14, :cond_16

    check-cast p2, [J

    move-object/from16 v4, p2

    check-cast v4, [J

    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_9
    array-length v14, v4

    if-ge v8, v14, :cond_15

    if-eqz v8, :cond_14

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_14
    aget-wide v14, v4, v8

    invoke-virtual {v12, v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_15
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p2

    instance-of v14, v0, [S

    if-eqz v14, :cond_19

    check-cast p2, [S

    move-object/from16 v4, p2

    check-cast v4, [S

    const/16 v14, 0x5b

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_a
    array-length v14, v4

    if-ge v8, v14, :cond_18

    if-eqz v8, :cond_17

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_17
    aget-short v14, v4, v8

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_18
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v14, p2

    check-cast v14, [Ljava/lang/Object;

    move-object v4, v14

    check-cast v4, [Ljava/lang/Object;

    array-length v13, v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v6, v1, v2, v14}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v14, 0x5b

    :try_start_0
    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v13, :cond_1e

    if-eqz v8, :cond_1a

    const/16 v14, 0x2c

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_1a
    aget-object v10, v4, v8

    if-nez v10, :cond_1c

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v0, p2

    instance-of v14, v0, [Ljava/lang/String;

    if-eqz v14, :cond_1b

    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_1b
    const-string/jumbo v14, "null"

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v14

    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v14

    :cond_1c
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    if-ne v14, v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v14, v0, v10, v15, v1}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    :cond_1d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v9, v0, v10, v14, v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_c

    :cond_1e
    const/16 v14, 0x5d

    invoke-virtual {v12, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    iput-object v6, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto/16 :goto_0
.end method
