.class public Lcom/miui/antivirus/result/CardBottom;
.super Lcom/miui/antivirus/result/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x4d9022ffbc63f86cL


# instance fields
.field private cardId:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/antivirus/result/BaseModel;-><init>()V

    const-string/jumbo v0, "module"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/CardBottom;->title:Ljava/lang/String;

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/CardBottom;->url:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/CardBottom;->category:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/antivirus/result/CardBottom;->isTop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/result/CardBottom;->isBottom:Z

    return-void
.end method


# virtual methods
.method public asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/result/BaseModel;->asi(ILandroid/view/View;Landroid/content/Context;Lcom/miui/antivirus/result/i;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/v;

    iget-object v0, v0, Lcom/miui/antivirus/result/v;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antivirus/result/CardBottom;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f03017f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/result/CardBottom;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antivirus/result/CardBottom;->category:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/utils/n;->JG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/CardBottom;->cardId:Ljava/lang/String;

    return-void
.end method
