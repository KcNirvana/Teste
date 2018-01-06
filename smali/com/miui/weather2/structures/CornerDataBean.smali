.class public Lcom/miui/weather2/structures/CornerDataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imgUrl:Ljava/lang/String;

.field private link:Lcom/miui/weather2/structures/LinkBean;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CornerDataBean;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Lcom/miui/weather2/structures/LinkBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CornerDataBean;->link:Lcom/miui/weather2/structures/LinkBean;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CornerDataBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CornerDataBean;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setLink(Lcom/miui/weather2/structures/LinkBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CornerDataBean;->link:Lcom/miui/weather2/structures/LinkBean;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CornerDataBean;->text:Ljava/lang/String;

    return-void
.end method
