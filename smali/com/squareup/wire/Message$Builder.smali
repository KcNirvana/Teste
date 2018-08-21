.class public abstract Lcom/squareup/wire/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/wire/Message;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    invoke-static {p1}, Lcom/squareup/wire/Message;->access$000(Lcom/squareup/wire/Message;)Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/UnknownFieldMap;-><init>(Lcom/squareup/wire/UnknownFieldMap;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    :cond_0
    return-void
.end method

.method protected static checkForNulls(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Element at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public addFixed32(II)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/UnknownFieldMap;->addFixed32(ILjava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addFixed64(IJ)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/UnknownFieldMap;->addFixed64(ILjava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addLengthDelimited(ILokio/ByteString;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/squareup/wire/UnknownFieldMap;->addLengthDelimited(ILokio/ByteString;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addVarint(IJ)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/squareup/wire/Message$Builder;->ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/UnknownFieldMap;->addVarint(ILjava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public checkRequiredFields()V
    .locals 2

    invoke-static {}, Lcom/squareup/wire/Message;->access$100()Lcom/squareup/wire/Wire;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Wire;->builderAdapter(Ljava/lang/Class;)Lcom/squareup/wire/BuilderAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/BuilderAdapter;->checkRequiredFields(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method ensureUnknownFieldMap()Lcom/squareup/wire/UnknownFieldMap;
    .locals 1

    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/wire/UnknownFieldMap;

    invoke-direct {v0}, Lcom/squareup/wire/UnknownFieldMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldMap:Lcom/squareup/wire/UnknownFieldMap;

    return-object v0
.end method
