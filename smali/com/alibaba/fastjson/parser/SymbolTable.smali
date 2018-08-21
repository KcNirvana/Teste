.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field private final indexMask:I

.field private final symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    const-string/jumbo v0, "$ref"

    const/4 v1, 0x4

    const-string/jumbo v2, "$ref"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    const-string/jumbo v0, "@type"

    const-string/jumbo v1, "@type"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "@type"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-array v0, p2, [C

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5

    iget v3, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v0, p4, v3

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v3, v0

    if-eqz v1, :cond_1

    iget v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length v3, v3

    if-ne p3, v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, v4, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_2

    move-object v2, p1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    new-instance v4, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {v4, v2, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 7

    iget v5, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v0, p4, v5

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v5, v0

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    iget v5, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    if-ne p4, v5, :cond_2

    iget-object v5, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    array-length v5, v5

    if-ne p3, v5, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    add-int v5, p2, v3

    aget-char v5, p1, v5

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->chars:[C

    aget-char v6, v6, v3

    if-eq v5, v6, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->value:Ljava/lang/String;

    :goto_2
    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    invoke-direct {v1, v4, p4}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v1, v5, v0

    goto :goto_2
.end method
