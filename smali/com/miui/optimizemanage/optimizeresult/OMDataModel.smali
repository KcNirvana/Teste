.class public Lcom/miui/optimizemanage/optimizeresult/OMDataModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static mLock:Ljava/lang/Object;

.field public static final wY:Ljava/util/List;


# instance fields
.field private advIndex:I

.field private channel:Ljava/lang/String;

.field private dataVersion:Ljava/lang/String;

.field private forceRefresh:Z

.field private isOverseaChannel:Z

.field private language:Ljava/lang/String;

.field private layoutId:Ljava/lang/String;

.field private models:Ljava/util/ArrayList;

.field private status:I

.field private tn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->wY:Ljava/util/List;

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->wY:Ljava/util/List;

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/l;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->language:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    return-void
.end method

.method public static yF(Lorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/OMDataModel;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    sget-object v4, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;

    invoke-direct {v5}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;-><init>()V

    iget-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->advIndex:I

    const-string/jumbo v0, "isOverseaChannel"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->isOverseaChannel:Z

    const-string/jumbo v0, "lang"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->language:Ljava/lang/String;

    const-string/jumbo v0, "channel"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->channel:Ljava/lang/String;

    const-string/jumbo v0, "dataVersion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->dataVersion:Ljava/lang/String;

    const-string/jumbo v0, "layoutId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->layoutId:Ljava/lang/String;

    const-string/jumbo v0, "tn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->tn:Ljava/lang/String;

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->status:I

    const-string/jumbo v0, "forceRefresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->forceRefresh:Z

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yL(Lcom/miui/optimizemanage/optimizeresult/OMDataModel;Lcom/miui/optimizemanage/optimizeresult/f;Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    iget-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, v5, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/m;

    instance-of v1, v0, Lcom/miui/optimizemanage/optimizeresult/f;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/f;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/f;->getSubCardModelList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/m;

    instance-of v8, v0, Lcom/miui/optimizemanage/optimizeresult/b;

    if-eqz v8, :cond_1

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/b;

    if-ne v7, v9, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/optimizemanage/optimizeresult/b;->setTopRow(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/optimizemanage/optimizeresult/b;->setBottomRow(Z)V

    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/miui/optimizemanage/optimizeresult/b;->setTopRow(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    add-int/lit8 v8, v7, -0x1

    if-ne v1, v8, :cond_1

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v0, v8}, Lcom/miui/optimizemanage/optimizeresult/b;->setBottomRow(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    monitor-exit v4

    return-object v5
.end method

.method public static yI(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/h;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/h;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/h;-><init>()V

    const v1, 0x7f070411

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/h;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f07048d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/h;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/h;->yr(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static yJ(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    const v7, 0x7f0703fa

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->wY:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yI(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/h;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/n;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/n;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/j;

    const-string/jumbo v1, "assets://img/ziqidongguanli.png"

    const v2, 0x7f070758

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070759

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "miui.intent.action.OP_AUTO_START"

    invoke-direct/range {v0 .. v5}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/n;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/n;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/j;

    const-string/jumbo v1, "assets://img/xiezai.png"

    const v2, 0x7f0703fe

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070757

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    invoke-direct/range {v0 .. v5}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/n;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/n;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/j;

    const-string/jumbo v1, "drawable://2130837966"

    const v2, 0x7f07060a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07075b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070755

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct/range {v0 .. v5}, Lcom/miui/optimizemanage/optimizeresult/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/n;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/n;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method private static yL(Lcom/miui/optimizemanage/optimizeresult/OMDataModel;Lcom/miui/optimizemanage/optimizeresult/f;Lorg/json/JSONObject;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "rowType"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "template"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yK()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yN(I)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yK()I

    move-result v3

    const-string/jumbo v0, ""

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-static {v0, v2, v1}, Lcom/miui/optimizemanage/a;->AG(Ljava/lang/String;Lorg/json/JSONObject;I)Lcom/miui/optimizemanage/optimizeresult/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/f;->yl(Lcom/miui/optimizemanage/optimizeresult/m;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "1.306.1.7"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "1.306.1.8"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Lcom/miui/optimizemanage/optimizeresult/j;->yv(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/f;->yl(Lcom/miui/optimizemanage/optimizeresult/m;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "003"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Lcom/miui/optimizemanage/optimizeresult/d;->xU(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/f;->yl(Lcom/miui/optimizemanage/optimizeresult/m;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/b;

    invoke-direct {v0, v2}, Lcom/miui/optimizemanage/optimizeresult/b;-><init>(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/f;->yl(Lcom/miui/optimizemanage/optimizeresult/m;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/n;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/n;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "list"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lcom/miui/optimizemanage/optimizeresult/f;

    invoke-direct {v2, p2}, Lcom/miui/optimizemanage/optimizeresult/f;-><init>(Lorg/json/JSONObject;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yL(Lcom/miui/optimizemanage/optimizeresult/OMDataModel;Lcom/miui/optimizemanage/optimizeresult/f;Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static yM(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "02-22"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zK()Z

    move-result v0

    const-string/jumbo v1, "setting"

    if-eqz v0, :cond_2

    const-string/jumbo v0, "3"

    :goto_1
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/securityscan/b/a;->Jn:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/k;->Jf(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "channel"

    const-string/jumbo v1, "01-22"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "2"

    goto :goto_1
.end method


# virtual methods
.method public yG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->dataVersion:Ljava/lang/String;

    return-object v0
.end method

.method public yH()Ljava/util/List;
    .locals 8

    const/4 v1, 0x0

    sget-object v4, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/m;

    instance-of v2, v1, Lcom/miui/optimizemanage/optimizeresult/f;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/miui/optimizemanage/optimizeresult/f;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/f;->getSubCardModelList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/miui/optimizemanage/optimizeresult/f;->isVisible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/m;

    if-eqz v1, :cond_1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/optimizemanage/optimizeresult/b;->setPreviousLine(Z)V

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-lez v2, :cond_5

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/m;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizemanage/optimizeresult/m;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/optimizemanage/optimizeresult/n;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->models:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public yK()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->advIndex:I

    return v0
.end method

.method public yN(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->advIndex:I

    return-void
.end method
