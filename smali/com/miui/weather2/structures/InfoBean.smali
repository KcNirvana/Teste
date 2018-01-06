.class public Lcom/miui/weather2/structures/InfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoCardBean;",
            ">;"
        }
    .end annotation
.end field

.field private channelId:Ljava/lang/String;

.field private layoutId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private testName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoCardBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoBean;->cards:Ljava/util/List;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoBean;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoBean;->layoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/InfoBean;->testName:Ljava/lang/String;

    return-object v0
.end method

.method public setCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/InfoCardBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoBean;->cards:Ljava/util/List;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoBean;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setLayoutId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoBean;->layoutId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoBean;->status:Ljava/lang/String;

    return-void
.end method

.method public setTestName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/InfoBean;->testName:Ljava/lang/String;

    return-void
.end method
