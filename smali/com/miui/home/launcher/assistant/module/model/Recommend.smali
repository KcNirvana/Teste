.class public Lcom/miui/home/launcher/assistant/module/model/Recommend;
.super Ljava/lang/Object;
.source "Recommend.java"


# instance fields
.field private appId:I

.field private imageName:Ljava/lang/String;

.field private showKey:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->appId:I

    return v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->showKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->appId:I

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setShowKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->showKey:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/model/Recommend;->title:Ljava/lang/String;

    return-void
.end method
