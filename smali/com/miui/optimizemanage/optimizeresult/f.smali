.class public Lcom/miui/optimizemanage/optimizeresult/f;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field private subCardModelList:Ljava/util/List;

.field private title:Ljava/lang/String;

.field private visible:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->subCardModelList:Ljava/util/List;

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->title:Ljava/lang/String;

    const-string/jumbo v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->visible:Z

    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/f;->setLayoutId(I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getSubCardModelList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->subCardModelList:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->visible:Z

    return v0
.end method

.method public yl(Lcom/miui/optimizemanage/optimizeresult/m;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/f;->subCardModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
