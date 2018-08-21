.class public final Lcom/squareup/wire/Wire;
.super Ljava/lang/Object;
.source "Wire.java"


# instance fields
.field private final availabilityCheckers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Lcom/squareup/wire/AvailabilityChecker",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private final builderAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message$Builder;",
            ">;",
            "Lcom/squareup/wire/BuilderAdapter",
            "<+",
            "Lcom/squareup/wire/Message$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final enumAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Lcom/squareup/wire/EnumAdapter",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Lcom/squareup/wire/MessageAdapter",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field final registry:Lcom/squareup/wire/ExtensionRegistry;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v8, p0, Lcom/squareup/wire/Wire;->availabilityCheckers:Ljava/util/Map;

    new-instance v8, Lcom/squareup/wire/ExtensionRegistry;

    invoke-direct {v8}, Lcom/squareup/wire/ExtensionRegistry;-><init>()V

    iput-object v8, p0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/squareup/wire/Extension;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/Extension;

    iget-object v8, p0, Lcom/squareup/wire/Wire;->registry:Lcom/squareup/wire/ExtensionRegistry;

    invoke-virtual {v8, v2}, Lcom/squareup/wire/ExtensionRegistry;->add(Lcom/squareup/wire/Extension;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/wire/Wire;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private parseFrom(Lcom/squareup/wire/WireInput;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Lcom/squareup/wire/WireInput;",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/squareup/wire/Wire;->messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/wire/MessageAdapter;->read(Lcom/squareup/wire/WireInput;)Lcom/squareup/wire/Message;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method declared-synchronized availabilityChecker(Ljava/lang/Class;)Lcom/squareup/wire/AvailabilityChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/AvailabilityChecker",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/Wire;->availabilityCheckers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/AvailabilityChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/wire/AvailabilityChecker;

    invoke-direct {v0, p1}, Lcom/squareup/wire/AvailabilityChecker;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/wire/Wire;->availabilityCheckers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized builderAdapter(Ljava/lang/Class;)Lcom/squareup/wire/BuilderAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lcom/squareup/wire/Message$Builder;",
            ">(",
            "Ljava/lang/Class",
            "<TB;>;)",
            "Lcom/squareup/wire/BuilderAdapter",
            "<TB;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/BuilderAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/wire/BuilderAdapter;

    invoke-direct {v0, p1}, Lcom/squareup/wire/BuilderAdapter;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/wire/Wire;->builderAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enumAdapter(Ljava/lang/Class;)Lcom/squareup/wire/EnumAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/squareup/wire/EnumAdapter",
            "<TE;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/EnumAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/wire/EnumAdapter;

    invoke-direct {v0, p1}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/wire/Wire;->enumAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized messageAdapter(Ljava/lang/Class;)Lcom/squareup/wire/MessageAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;)",
            "Lcom/squareup/wire/MessageAdapter",
            "<TM;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/MessageAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/wire/MessageAdapter;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/MessageAdapter;-><init>(Lcom/squareup/wire/Wire;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/squareup/wire/Wire;->messageAdapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public parseFrom(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "input"

    invoke-static {p1, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "messageClass"

    invoke-static {p2, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/wire/WireInput;->newInstance(Ljava/io/InputStream;)Lcom/squareup/wire/WireInput;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Wire;->parseFrom(Lcom/squareup/wire/WireInput;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lokio/Source;Ljava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Lokio/Source;",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "input"

    invoke-static {p1, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "messageClass"

    invoke-static {p2, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/wire/WireInput;->newInstance(Lokio/Source;)Lcom/squareup/wire/WireInput;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/squareup/wire/Wire;->parseFrom(Lcom/squareup/wire/WireInput;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([BIILjava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">([BII",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "bytes"

    invoke-static {p1, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "offset < 0"

    invoke-static {v0, v3}, Lcom/squareup/wire/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "count < 0"

    invoke-static {v0, v3}, Lcom/squareup/wire/Preconditions;->checkArgument(ZLjava/lang/String;)V

    add-int v0, p2, p3

    array-length v3, p1

    if-gt v0, v3, :cond_2

    :goto_2
    const-string/jumbo v0, "offset + count > bytes"

    invoke-static {v1, v0}, Lcom/squareup/wire/Preconditions;->checkArgument(ZLjava/lang/String;)V

    const-string/jumbo v0, "messageClass"

    invoke-static {p4, v0}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/squareup/wire/WireInput;->newInstance([BII)Lcom/squareup/wire/WireInput;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Wire;->parseFrom(Lcom/squareup/wire/WireInput;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public parseFrom([BLjava/lang/Class;)Lcom/squareup/wire/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message;",
            ">([B",
            "Ljava/lang/Class",
            "<TM;>;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "bytes"

    invoke-static {p1, v1}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "messageClass"

    invoke-static {p2, v1}, Lcom/squareup/wire/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/squareup/wire/WireInput;->newInstance([B)Lcom/squareup/wire/WireInput;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/squareup/wire/Wire;->parseFrom(Lcom/squareup/wire/WireInput;Ljava/lang/Class;)Lcom/squareup/wire/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/wire/Message;->checkAvailability()V

    return-object v0
.end method
