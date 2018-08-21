.class public Lcom/autonavi/its/protocol/model/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field private mColor:Ljava/lang/String;

.field private mFillColor:Ljava/lang/String;

.field private mFillTransparency:F

.field private mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparency:F

.field private mWeight:I


# direct methods
.method public constructor <init>(ILjava/lang/String;FLjava/lang/String;FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mWeight:I

    const-string/jumbo v0, "0x0000ff"

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mColor:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mTransparency:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mFillTransparency:F

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/model/Line;->setWeight(I)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/model/Line;->setColor(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/model/Line;->setTransparency(F)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/model/Line;->setFillColor(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/model/Line;->setFillTransparency(F)V

    invoke-direct {p0, p6}, Lcom/autonavi/its/protocol/model/Line;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mWeight:I

    const-string/jumbo v0, "0x0000ff"

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mColor:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mTransparency:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mFillTransparency:F

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/model/Line;->setWeight(I)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/model/Line;->setColor(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/model/Line;->setTransparency(F)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/model/Line;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/autonavi/its/protocol/model/Line;-><init>(ILjava/lang/String;FLjava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mWeight:I

    const-string/jumbo v0, "0x0000ff"

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mColor:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mTransparency:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mFillTransparency:F

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/model/Line;->setPoints(Ljava/util/List;)V

    return-void
.end method

.method public static arrayToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p0, v3

    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/Line;

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/Line;->toProtocolString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Line;
    .locals 2

    invoke-static {p0}, Lcom/autonavi/its/protocol/model/Coordinate;->parserArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/autonavi/its/protocol/model/Line;

    invoke-direct {v1, v0}, Lcom/autonavi/its/protocol/model/Line;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static parserArray(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Line;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    const-string/jumbo v5, "\\|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v5, v1, v0

    invoke-static {v5}, Lcom/autonavi/its/protocol/model/Line;->parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Line;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/Line;->mColor:Ljava/lang/String;

    return-void
.end method

.method private setFillColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/Line;->mFillColor:Ljava/lang/String;

    return-void
.end method

.method private setFillTransparency(F)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/Line;->mFillTransparency:F

    return-void
.end method

.method private setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/Line;->mPoints:Ljava/util/List;

    return-void
.end method

.method private setTransparency(F)V
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/autonavi/its/protocol/model/Line;->mTransparency:F

    return-void
.end method

.method private setWeight(I)V
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    const/16 v0, 0xf

    if-le p1, v0, :cond_1

    const/16 p1, 0xf

    :cond_1
    iput p1, p0, Lcom/autonavi/its/protocol/model/Line;->mWeight:I

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mFillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFillTransparency()F
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/Line;->mFillTransparency:F

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/Line;->mPoints:Ljava/util/List;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/Line;->mTransparency:F

    return v0
.end method

.method public getWeight()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/Line;->mWeight:I

    return v0
.end method

.method public toProtocolString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getFillColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getFillColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getFillTransparency()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getFillTransparency()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->arrayToProtocolString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n \t\t\t\t\t\t\t\t\u7ebf\u5750\u6807\u96c6:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     \t\t\t\t\t\t\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/Line;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t\t\t\t\t\t\t] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
