.class public Lcom/miui/common/card/GridFunctionData;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ABtest:Ljava/lang/String;

.field private action:Ljava/lang/String;

.field private adsCacheDrawable:Landroid/graphics/drawable/Drawable;

.field private dataId:Ljava/lang/String;

.field private functionId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private iconId:Ljava/lang/String;

.field private iconResourceId:I

.field private localPicResoourceId:I

.field private statKey:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private template:I

.field private title:Ljava/lang/String;

.field private useLocalPic:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/common/card/GridFunctionData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/common/card/GridFunctionData;->summary:Ljava/lang/String;

    iput p3, p0, Lcom/miui/common/card/GridFunctionData;->localPicResoourceId:I

    iput-object p4, p0, Lcom/miui/common/card/GridFunctionData;->action:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/common/card/GridFunctionData;->useLocalPic:Z

    return-void
.end method


# virtual methods
.method public getABtest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->ABtest:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsCacheDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->adsCacheDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->functionId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->iconId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/GridFunctionData;->iconResourceId:I

    return v0
.end method

.method public getLocalPicResoourceId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/GridFunctionData;->localPicResoourceId:I

    return v0
.end method

.method public getStatKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->statKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/GridFunctionData;->template:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/GridFunctionData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isUseLocalPic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/GridFunctionData;->useLocalPic:Z

    return v0
.end method

.method public setABtest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->ABtest:Ljava/lang/String;

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->action:Ljava/lang/String;

    return-void
.end method

.method public setAdsCacheDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->adsCacheDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setFunctionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->functionId:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIconId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->iconId:Ljava/lang/String;

    return-void
.end method

.method public setIconResourceId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/GridFunctionData;->iconResourceId:I

    return-void
.end method

.method public setStatKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->statKey:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/GridFunctionData;->template:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/GridFunctionData;->title:Ljava/lang/String;

    return-void
.end method
