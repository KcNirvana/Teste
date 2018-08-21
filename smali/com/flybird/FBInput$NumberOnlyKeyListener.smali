.class Lcom/flybird/FBInput$NumberOnlyKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "FBInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flybird/FBInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberOnlyKeyListener"
.end annotation


# static fields
.field private static CHAR_ARRAY:[C

.field private static CHAR_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_LIST:Ljava/util/List;

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_ARRAY:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x20s
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    sget-object v0, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_LIST:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_LIST:Ljava/util/List;

    sget-object v1, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_ARRAY:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    sget-object v4, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_LIST:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_LIST:Ljava/util/List;

    aget-char v4, v2, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected getAcceptedChars()[C
    .locals 1

    sget-object v0, Lcom/flybird/FBInput$NumberOnlyKeyListener;->CHAR_ARRAY:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
