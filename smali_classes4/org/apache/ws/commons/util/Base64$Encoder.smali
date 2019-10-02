.class public abstract Lorg/apache/ws/commons/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Encoder"
.end annotation


# instance fields
.field private final charBuffer:[C

.field private charOffset:I

.field private lineChars:I

.field private num:I

.field private numBytes:I

.field private final sep:Ljava/lang/String;

.field private final skipChars:I

.field private final wrapSize:I


# direct methods
.method protected constructor <init>([CILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string p3, "\n"

    :goto_0
    iput-object p3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    const/4 p3, 0x4

    if-nez p2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    :goto_1
    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    if-ne v1, p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, p2

    :goto_2
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-ltz v0, :cond_4

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    rem-int/2addr v0, p3

    if-gtz v0, :cond_4

    array-length p2, p1

    iget p3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    if-lt p2, p3, :cond_3

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "The buffer must contain at least "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " characters, but has "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Illegal argument for wrap size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "(Expected nonnegative multiple of 4)"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private wrap()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    iget-object v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->sep:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x2

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0xa

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    aput-char v2, v0, v3

    :goto_0
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    :cond_1
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lez v0, :cond_2

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/ws/commons/util/Base64$Encoder;->wrap()V

    :cond_2
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v2, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/ws/commons/util/Base64$Encoder;->writeBuffer([CII)V

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    :cond_3
    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x12

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$000()[C

    move-result-object v4

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->lineChars:I

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->wrapSize:I

    if-lt v1, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/ws/commons/util/Base64$Encoder;->wrap()V

    :cond_1
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->num:I

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->numBytes:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->skipChars:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    array-length v3, v3

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charBuffer:[C

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/ws/commons/util/Base64$Encoder;->writeBuffer([CII)V

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Encoder;->charOffset:I

    :cond_2
    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected abstract writeBuffer([CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
