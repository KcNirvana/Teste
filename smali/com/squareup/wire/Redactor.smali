.class public Lcom/squareup/wire/Redactor;
.super Ljava/lang/Object;
.source "Redactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Redactor$FutureRedactor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NOOP_REDACTOR:Lcom/squareup/wire/Redactor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/Redactor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final redactors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Lcom/squareup/wire/Redactor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private final messageFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final messageRedactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Redactor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final redactedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/squareup/wire/Redactor$1;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/squareup/wire/Redactor$1;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/wire/Redactor",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/Redactor;->builderConstructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lcom/squareup/wire/Redactor;->redactedFields:Ljava/util/List;

    iput-object p3, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    iput-object p4, p0, Lcom/squareup/wire/Redactor;->messageRedactors:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/Class;)Lcom/squareup/wire/Redactor;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Redactor",
            "<TT;>;"
        }
    .end annotation

    const-class v16, Lcom/squareup/wire/Redactor;

    monitor-enter v16

    :try_start_0
    sget-object v15, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/wire/Redactor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit v16

    return-object v5

    :cond_0
    :try_start_1
    new-instance v7, Lcom/squareup/wire/Redactor$FutureRedactor;

    invoke-direct {v7}, Lcom/squareup/wire/Redactor$FutureRedactor;-><init>()V

    sget-object v15, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v15, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v9, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v10, v2, v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const-class v15, Lcom/squareup/wire/ProtoField;

    invoke-virtual {v10, v15}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/ProtoField;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/squareup/wire/ProtoField;->redacted()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v1}, Lcom/squareup/wire/ProtoField;->label()Lcom/squareup/wire/Message$Label;

    move-result-object v15

    sget-object v17, Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_3

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "Field %s is REQUIRED and cannot be redacted."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_3
    :try_start_4
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_5
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    const-class v15, Lcom/squareup/wire/Message;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/squareup/wire/Redactor;->get(Ljava/lang/Class;)Lcom/squareup/wire/Redactor;

    move-result-object v6

    sget-object v15, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    if-eq v6, v15, :cond_1

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    sget-object v14, Lcom/squareup/wire/Redactor;->NOOP_REDACTOR:Lcom/squareup/wire/Redactor;

    :goto_3
    invoke-virtual {v7, v14}, Lcom/squareup/wire/Redactor$FutureRedactor;->setDelegate(Lcom/squareup/wire/Redactor;)V

    sget-object v15, Lcom/squareup/wire/Redactor;->redactors:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v14

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object p0, v15, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-instance v14, Lcom/squareup/wire/Redactor;

    invoke-direct {v14, v3, v13, v11, v12}, Lcom/squareup/wire/Redactor;-><init>(Ljava/lang/reflect/Constructor;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->builderConstructor:Ljava/lang/reflect/Constructor;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/Message;

    iget-object v6, p0, Lcom/squareup/wire/Redactor;->redactedFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_2
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageFields:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v6, p0, Lcom/squareup/wire/Redactor;->messageRedactors:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/wire/Redactor;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/wire/Message;

    invoke-virtual {v5, v6}, Lcom/squareup/wire/Redactor;->redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
