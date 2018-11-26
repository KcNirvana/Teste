.class public Lcom/miui/optimizemanage/optimizeresult/b;
.super Lcom/miui/optimizemanage/optimizeresult/m;
.source ""


# instance fields
.field private dataId:Ljava/lang/String;

.field private images:[Ljava/lang/String;

.field private isBottomRow:Z

.field private isTopRow:Z

.field private previousCardModelIsBlankLine:Z

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wt:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/m;-><init>()V

    iput-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->wt:Z

    new-array v1, v5, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->images:[Ljava/lang/String;

    const-string/jumbo v1, "images"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v5, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/b;->images:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->title:Ljava/lang/String;

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->url:Ljava/lang/String;

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->dataId:Ljava/lang/String;

    const v0, 0x7f0300fe

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/b;->setLayoutId(I)V

    return-void
.end method

.method static synthetic xJ(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xK(Lcom/miui/optimizemanage/optimizeresult/b;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->images:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xL(Lcom/miui/optimizemanage/optimizeresult/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->isBottomRow:Z

    return v0
.end method

.method static synthetic xM(Lcom/miui/optimizemanage/optimizeresult/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->wt:Z

    return v0
.end method

.method static synthetic xN(Lcom/miui/optimizemanage/optimizeresult/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->isTopRow:Z

    return v0
.end method

.method static synthetic xO(Lcom/miui/optimizemanage/optimizeresult/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->previousCardModelIsBlankLine:Z

    return v0
.end method

.method static synthetic xP(Lcom/miui/optimizemanage/optimizeresult/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic xQ(Lcom/miui/optimizemanage/optimizeresult/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->wt:Z

    return p1
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/optimizemanage/optimizeresult/a;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/c;

    invoke-direct {v0, p1}, Lcom/miui/optimizemanage/optimizeresult/c;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/m;->onClick(Landroid/view/View;)V

    invoke-static {}, Lcom/miui/securityscan/utils/i;->Jb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/b;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/b;->dataId:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Aw(Ljava/lang/String;)V

    return-void
.end method

.method public setBottomRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->isBottomRow:Z

    return-void
.end method

.method public setPreviousLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->previousCardModelIsBlankLine:Z

    return-void
.end method

.method public setTopRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/optimizeresult/b;->isTopRow:Z

    return-void
.end method
