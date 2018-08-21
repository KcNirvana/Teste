.class final Lcom/squareup/wire/EnumAdapter;
.super Ljava/lang/Object;
.source "EnumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/ProtoEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final constants:[Lcom/squareup/wire/ProtoEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final isDense:Z

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/wire/EnumAdapter$1;

    invoke-direct {v0}, Lcom/squareup/wire/EnumAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/wire/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/EnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/squareup/wire/ProtoEnum;

    iput-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    sget-object v3, Lcom/squareup/wire/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    array-length v1, v2

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v2, v2, v4

    invoke-interface {v2}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    iput-boolean v5, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    :cond_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    iget-object v3, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public fromInt(I)Lcom/squareup/wire/ProtoEnum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-boolean v2, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, p1, -0x1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v2, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown enum tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/wire/EnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toInt(Lcom/squareup/wire/ProtoEnum;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    return v0
.end method
