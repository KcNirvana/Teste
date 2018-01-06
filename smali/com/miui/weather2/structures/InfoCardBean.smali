.class public Lcom/miui/weather2/structures/InfoCardBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cardId:Ljava/lang/String;

.field private cornerMark:Lcom/miui/weather2/structures/CornerMarkBean;

.field private isVisible:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoListNodeBean;",
            ">;"
        }
    .end annotation
.end field

.field private statKey:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->cornerMark:Lcom/miui/weather2/structures/CornerMarkBean;

    return-object v0
.end method

.method public getIsVisible()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->isVisible:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoListNodeBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getStatKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->statKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoCardBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->cardId:Ljava/lang/String;

    return-void
.end method

.method public setCornerMark(Lcom/miui/weather2/structures/CornerMarkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->cornerMark:Lcom/miui/weather2/structures/CornerMarkBean;

    return-void
.end method

.method public setIsVisible(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->isVisible:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoListNodeBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->list:Ljava/util/List;

    return-void
.end method

.method public setStatKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->statKey:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->template:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoCardBean;->title:Ljava/lang/String;

    return-void
.end method
