.class final Lcom/squareup/wire/MessageAdapter;
.super Ljava/lang/Object;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/MessageAdapter$1;,
        Lcom/squareup/wire/MessageAdapter$ImmutableList;,
        Lcom/squareup/wire/MessageAdapter$Storage;,
        Lcom/squareup/wire/MessageAdapter$FieldInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FULL_BLOCK:Ljava/lang/String; = "\u2588"

.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final fieldInfoMap:Lcom/squareup/wire/TagMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/TagMap",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TM;>;"
        }
    .end annotation
.end field

.field private final tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wire:Lcom/squareup/wire/Wire;


# direct methods
.method constructor <init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Wire;",
            "Ljava/lang/Class",
            "<TM;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v15, v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v9, v13, v14

    const-class v2, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v9, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/squareup/wire/ProtoField;

    if-eqz v12, :cond_1

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->tag()I

    move-result v3

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->type()Lcom/squareup/wire/Message$Datatype;

    move-result-object v5

    sget-object v2, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/squareup/wire/MessageAdapter;->getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v6

    invoke-interface {v12}, Lcom/squareup/wire/ProtoField;->redacted()Z

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/squareup/wire/MessageAdapter;->getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/squareup/wire/MessageAdapter$FieldInfo;-><init>(ILjava/lang/String;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Message$Label;ZLjava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lcom/squareup/wire/MessageAdapter$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    if-ne v5, v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/squareup/wire/MessageAdapter;->getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_1

    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/squareup/wire/TagMap;->of(Ljava/util/Map;)Lcom/squareup/wire/TagMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    return-void
.end method

.method private getBuilderField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No builder field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message$Builder",
            "<TM;>;>;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "$Builder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No builder class found for message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/EnumAdapter",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumClass(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v1

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumAdapter:Lcom/squareup/wire/EnumAdapter;

    goto :goto_0
.end method

.method private getEnumClass(I)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getEnumType()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->enumType:Ljava/lang/Class;

    goto :goto_0
.end method

.method private getEnumSize(Lcom/squareup/wire/ProtoEnum;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    return v1
.end method

.method private getEnumType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v3, Ljava/lang/Enum;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExtension(I)Lcom/squareup/wire/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v1, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;I)Lcom/squareup/wire/Extension;

    move-result-object v1

    goto :goto_0
.end method

.method private getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v5

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v0

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v6, Ljava/util/List;

    invoke-direct {p0, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    :cond_2
    return v4
.end method

.method private getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/squareup/wire/MessageAdapter",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageClass(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v1

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageAdapter:Lcom/squareup/wire/MessageAdapter;

    goto :goto_0
.end method

.method private getMessageClass(I)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/squareup/wire/Extension;->getMessageType()Ljava/lang/Class;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    iget-object v2, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->messageType:Ljava/lang/Class;

    goto :goto_0
.end method

.method private getMessageSize(Lcom/squareup/wire/Message;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getMessageType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/squareup/wire/Message;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-class v3, Lcom/squareup/wire/Message;

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p2, v4}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v4

    invoke-static {v4}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v3

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    return v3
.end method

.method private getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 2

    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->varintTagSize(I)I

    move-result v0

    invoke-direct {p0, p2, p3}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I
    .locals 4

    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p2}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v2

    :goto_0
    return v2

    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v2

    goto :goto_0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    goto :goto_0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    goto :goto_0

    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v2

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_6
    check-cast p1, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getEnumSize(Lcom/squareup/wire/ProtoEnum;)I

    move-result v2

    goto :goto_0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->utf8Length(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :pswitch_8
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    :pswitch_9
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-direct {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getMessageSize(Lcom/squareup/wire/Message;)I

    move-result v2

    goto :goto_0

    :pswitch_a
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_b
    const/16 v2, 0x8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    const/16 v5, 0x40

    if-lt v4, v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Wire recursion limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v3

    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getMessageAdapter(I)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    iget v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/squareup/wire/WireInput;->recursionDepth:I

    invoke-virtual {p1, v3}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    return-object v2
.end method

.method private readUnknownField(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-virtual {p4}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported wire type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/squareup/wire/UnknownFieldMap;->addVarint(ILjava/lang/Long;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/squareup/wire/UnknownFieldMap;->addFixed32(ILjava/lang/Integer;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/squareup/wire/UnknownFieldMap;->addFixed64(ILjava/lang/Long;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/squareup/wire/UnknownFieldMap;->addLengthDelimited(ILokio/ByteString;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2}, Lcom/squareup/wire/WireInput;->skipGroup()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v3, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3

    :pswitch_1
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/squareup/wire/WireInput;->decodeZigZag32(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint64()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/squareup/wire/WireInput;->decodeZigZag64(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/squareup/wire/MessageAdapter;->getEnumAdapter(I)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v2

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/squareup/wire/EnumAdapter;->fromInt(I)Lcom/squareup/wire/ProtoEnum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readBytes()Lokio/ByteString;

    move-result-object v3

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->readMessage(Lcom/squareup/wire/WireInput;I)Lcom/squareup/wire/Message;

    move-result-object v3

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :pswitch_b
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :pswitch_c
    invoke-virtual {p1}, Lcom/squareup/wire/WireInput;->readFixed64()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ExtendableMessage;",
            "Lcom/squareup/wire/Extension",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/squareup/wire/ExtendableMessage;->setExtension(Lcom/squareup/wire/Extension;Ljava/lang/Object;)Lcom/squareup/wire/ExtendableMessage;

    return-void
.end method

.method private utf8Length(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    return v1
.end method

.method private writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(TE;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/EnumAdapter;->toInt(Lcom/squareup/wire/ProtoEnum;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    return-void
.end method

.method private writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Lcom/squareup/wire/WireOutput;",
            "Lcom/squareup/wire/ExtensionMap",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/squareup/wire/ExtensionMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p2, v2}, Lcom/squareup/wire/ExtensionMap;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v1

    invoke-virtual {p2, v2}, Lcom/squareup/wire/ExtensionMap;->getExtensionValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getTag()I

    move-result v4

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v0

    invoke-virtual {v1}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast v5, Ljava/util/List;

    invoke-direct {p0, p1, v5, v4, v0}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v5, Ljava/util/List;

    invoke-direct {p0, p1, v5, v4, v0}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getSerializedSize()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    return-void
.end method

.method private writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/squareup/wire/MessageAdapter;->getSerializedSizeNoTag(Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p1, p3, v3}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireOutput;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1, p4}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/squareup/wire/Message$Datatype;->wireType()Lcom/squareup/wire/WireType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/squareup/wire/MessageAdapter;->writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method private writeValueNoTag(Lcom/squareup/wire/WireOutput;Ljava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Lcom/squareup/wire/MessageAdapter$1;->$SwitchMap$com$squareup$wire$Message$Datatype:[I

    invoke-virtual {p3}, Lcom/squareup/wire/Message$Datatype;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeSignedVarint32(I)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/wire/WireOutput;->zigZag32(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/squareup/wire/WireOutput;->zigZag64(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_6
    check-cast p2, Lcom/squareup/wire/ProtoEnum;

    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeEnum(Lcom/squareup/wire/ProtoEnum;Lcom/squareup/wire/WireOutput;)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    invoke-virtual {p1, v1}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    :pswitch_8
    move-object v0, p2

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    invoke-virtual {v0}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-direct {p0, p2, p1}, Lcom/squareup/wire/MessageAdapter;->writeMessage(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V

    goto :goto_0

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto :goto_0

    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    :pswitch_c
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    goto/16 :goto_0

    :pswitch_d
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method getExtension(Ljava/lang/String;)Lcom/squareup/wire/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/wire/Extension",
            "<",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;*>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->wire:Lcom/squareup/wire/Wire;

    iget-object v0, v1, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/wire/ExtensionRegistry;->getExtension(Ljava/lang/Class;Ljava/lang/String;)Lcom/squareup/wire/Extension;

    move-result-object v1

    goto :goto_0
.end method

.method getField(Ljava/lang/String;)Lcom/squareup/wire/MessageAdapter$FieldInfo;
    .locals 3

    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->tagMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    goto :goto_0
.end method

.method getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v2, "Field is not of type \"Message\""

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$000(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/squareup/wire/MessageAdapter$FieldInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v0}, Lcom/squareup/wire/TagMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getSerializedSize(Lcom/squareup/wire/Message;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v6, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    iget-object v4, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v8

    if-eqz v8, :cond_1

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getPackedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    :cond_1
    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7, v6, v0}, Lcom/squareup/wire/MessageAdapter;->getRepeatedSize(Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6, v7, v0}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_0

    :cond_3
    instance-of v8, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v8, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/squareup/wire/ExtendableMessage;

    iget-object v8, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, v8}, Lcom/squareup/wire/MessageAdapter;->getExtensionsSerializedSize(Lcom/squareup/wire/ExtensionMap;)I

    move-result v8

    add-int/2addr v5, v8

    :cond_4
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->getUnknownFieldsSerializedSize()I

    move-result v8

    add-int/2addr v5, v8

    return v5
.end method

.method read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/WireInput;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/wire/Message;

    new-instance v16, Lcom/squareup/wire/MessageAdapter$Storage;

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter$Storage;-><init>(Lcom/squareup/wire/MessageAdapter$1;)V

    :cond_0
    :goto_0
    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v19

    shr-int/lit8 v18, v19, 0x3

    invoke-static/range {v19 .. v19}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v21

    if-nez v18, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/wire/MessageAdapter$Storage;->getTags()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/squareup/wire/TagMap;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual/range {v16 .. v17}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    :cond_1
    :try_start_1
    move-object v0, v12

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v23

    invoke-virtual/range {v16 .. v17}, Lcom/squareup/wire/MessageAdapter$Storage;->get(I)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v22, Ljava/lang/RuntimeException;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v22

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    if-eqz v7, :cond_3

    iget-object v4, v7, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    iget-object v10, v7, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    :goto_2
    invoke-virtual {v10}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v22

    if-eqz v22, :cond_7

    sget-object v22, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/squareup/wire/WireInput;->pushLimit(I)I

    move-result v13

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v22

    int-to-long v0, v11

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    cmp-long v22, v22, v24

    if-gez v22, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v20

    sget-object v22, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_5

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Lcom/squareup/wire/Message;->addVarint(IJ)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/squareup/wire/MessageAdapter;->getExtension(I)Lcom/squareup/wire/Extension;

    move-result-object v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/squareup/wire/MessageAdapter;->readUnknownField(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireInput;ILcom/squareup/wire/WireType;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/squareup/wire/Extension;->getDatatype()Lcom/squareup/wire/Message$Datatype;

    move-result-object v4

    invoke-virtual {v6}, Lcom/squareup/wire/Extension;->getLabel()Lcom/squareup/wire/Message$Label;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/squareup/wire/WireInput;->popLimit(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v22

    int-to-long v0, v11

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    cmp-long v22, v22, v24

    if-eqz v22, :cond_0

    new-instance v22, Ljava/io/IOException;

    const-string/jumbo v23, "Packed data had wrong length!"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/squareup/wire/MessageAdapter;->readValue(Lcom/squareup/wire/WireInput;ILcom/squareup/wire/Message$Datatype;)Ljava/lang/Object;

    move-result-object v20

    sget-object v22, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_8

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v12, v0, v1, v2}, Lcom/squareup/wire/Message;->addVarint(IJ)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v10}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/MessageAdapter$Storage;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_a

    move-object v0, v12

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lcom/squareup/wire/MessageAdapter;->setExtension(Lcom/squareup/wire/ExtendableMessage;Lcom/squareup/wire/Extension;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2}, Lcom/squareup/wire/MessageAdapter;->setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_b
    return-object v12
.end method

.method public setBuilderField(Lcom/squareup/wire/Message;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/MessageAdapter;->fieldInfoMap:Lcom/squareup/wire/TagMap;

    invoke-virtual {v1, p2}, Lcom/squareup/wire/TagMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-static {v1}, Lcom/squareup/wire/MessageAdapter$FieldInfo;->access$100(Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method toByteArray(Lcom/squareup/wire/Message;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)[B"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/squareup/wire/MessageAdapter;->getSerializedSize(Lcom/squareup/wire/Message;)I

    move-result v2

    new-array v1, v2, [B

    :try_start_0
    invoke-static {v1}, Lcom/squareup/wire/WireOutput;->newInstance([B)Lcom/squareup/wire/WireOutput;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method toString(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/squareup/wire/MessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v1}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    iget-object v6, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/squareup/wire/MessageAdapter$FieldInfo;->redacted:Z

    if-eqz v6, :cond_1

    const-string/jumbo v5, "\u2588\u2588"

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v6, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v6, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/squareup/wire/ExtendableMessage;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "{extensions="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/squareup/wire/ExtendableMessage;->extensionsToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v6, "}"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method write(Lcom/squareup/wire/Message;Lcom/squareup/wire/WireOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/squareup/wire/WireOutput;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/wire/MessageAdapter;->getFields()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;

    invoke-virtual {p0, p1, v2}, Lcom/squareup/wire/MessageAdapter;->getFieldValue(Lcom/squareup/wire/Message;Lcom/squareup/wire/MessageAdapter$FieldInfo;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v5, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->tag:I

    iget-object v0, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->datatype:Lcom/squareup/wire/Message$Datatype;

    iget-object v4, v2, Lcom/squareup/wire/MessageAdapter$FieldInfo;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isRepeated()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/squareup/wire/Message$Label;->isPacked()Z

    move-result v7

    if-eqz v7, :cond_1

    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writePacked(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    :cond_1
    check-cast v6, Ljava/util/List;

    invoke-direct {p0, p2, v6, v5, v0}, Lcom/squareup/wire/MessageAdapter;->writeRepeated(Lcom/squareup/wire/WireOutput;Ljava/util/List;ILcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v5, v6, v0}, Lcom/squareup/wire/MessageAdapter;->writeValue(Lcom/squareup/wire/WireOutput;ILjava/lang/Object;Lcom/squareup/wire/Message$Datatype;)V

    goto :goto_0

    :cond_3
    instance-of v7, p1, Lcom/squareup/wire/ExtendableMessage;

    if-eqz v7, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/squareup/wire/ExtendableMessage;

    iget-object v7, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/squareup/wire/ExtendableMessage;->extensionMap:Lcom/squareup/wire/ExtensionMap;

    invoke-direct {p0, p2, v7}, Lcom/squareup/wire/MessageAdapter;->writeExtensions(Lcom/squareup/wire/WireOutput;Lcom/squareup/wire/ExtensionMap;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/squareup/wire/Message;->writeUnknownFieldMap(Lcom/squareup/wire/WireOutput;)V

    return-void
.end method
