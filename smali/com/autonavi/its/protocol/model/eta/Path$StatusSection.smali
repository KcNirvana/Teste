.class public Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/eta/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusSection"
.end annotation


# instance fields
.field private mLength:I

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->cloneSelf()Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 1

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->addLength(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v0

    return-object v0
.end method

.method private addLength(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mLength:I

    return-object p0
.end method

.method private cloneSelf()Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->setLength(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->setStatus(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v0

    return-object v0
.end method

.method private static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "length"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->setLength(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->setStatus(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    :cond_0
    return-object v0
.end method

.method public static parser(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private setLength(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mLength:I

    return-object p0
.end method

.method private setStatus(I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mStatus:I

    return-object p0
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mLength:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n  \t\t[ StatusSection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    \t length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n    \t status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n   \t]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
