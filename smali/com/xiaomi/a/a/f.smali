.class public Lcom/xiaomi/a/a/f;
.super Lcom/xiaomi/a/a/a;
.source ""


# static fields
.field private static final bpB:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Common"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "100+5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "106Short"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "106Common"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "106Long"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "9Pre5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Other"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Null"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/a/a/f;->bpB:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/a;-><init>()V

    return-void
.end method

.method public static bNo(I)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static bNp(Ljava/lang/String;)I
    .locals 8

    const/16 v7, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x7

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_d

    :cond_3
    const/4 v0, 0x6

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_7

    :cond_5
    :goto_0
    if-ne v0, v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_a

    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_c

    const/4 v0, 0x4

    return v0

    :cond_7
    const/16 v1, 0x33

    if-ne v0, v1, :cond_9

    :cond_8
    return v3

    :cond_9
    const/16 v1, 0x35

    if-eq v0, v1, :cond_8

    const/16 v1, 0x38

    if-eq v0, v1, :cond_8

    const/16 v1, 0x34

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x37

    if-eq v1, v2, :cond_8

    goto :goto_0

    :cond_a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_6

    return v6

    :cond_b
    return v4

    :cond_c
    const/4 v0, 0x3

    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    return v5
.end method

.method public static bNq()I
    .locals 1

    sget-object v0, Lcom/xiaomi/a/a/f;->bpB:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
