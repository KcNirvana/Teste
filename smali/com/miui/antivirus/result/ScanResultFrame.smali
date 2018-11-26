.class public Lcom/miui/antivirus/result/ScanResultFrame;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final synthetic amq:[I


# instance fields
.field private amg:Lcom/miui/antivirus/result/DataModel;

.field private amh:Lcom/miui/antivirus/result/i;

.field private ami:Lcom/miui/antivirus/result/DataModel;

.field private amj:Lcom/miui/common/d/f;

.field private amk:Lcom/miui/common/customview/AutoPasteListView;

.field private aml:Z

.field private amm:Ljava/util/List;

.field private amn:Z

.field private amo:Landroid/content/SharedPreferences;

.field private amp:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    return-void
.end method

.method private arQ(Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    instance-of v2, v0, Lcom/miui/antivirus/result/Advertisement;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Advertisement;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v4}, Lcom/miui/antivirus/result/g;->atj(Lorg/json/JSONObject;)Lcom/miui/antivirus/result/Advertisement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/result/Advertisement;->isLoaded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/result/Advertisement;->ash(Lcom/miui/antivirus/result/Advertisement;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "CleanResultFrame"

    const-string/jumbo v2, "international ad hide"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private arU()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->aml:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amn:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amg:Lcom/miui/antivirus/result/DataModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/antivirus/result/ScanResultFrame;->arQ(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amh:Lcom/miui/antivirus/result/i;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/antivirus/result/i;->addAll(Ljava/util/Collection;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "******************"

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/DataModel;->asZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/miui/antivirus/result/h;->atv()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "data_config"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amo:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amo:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "initSucess"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lcom/miui/antivirus/result/b;

    invoke-direct {v1, p0, v3}, Lcom/miui/antivirus/result/b;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/b;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/antivirus/result/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic arX(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/antivirus/result/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amh:Lcom/miui/antivirus/result/i;

    return-object v0
.end method

.method static synthetic arY(Lcom/miui/antivirus/result/ScanResultFrame;)Lcom/miui/common/d/f;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amj:Lcom/miui/common/d/f;

    return-object v0
.end method

.method static synthetic arZ(Lcom/miui/antivirus/result/ScanResultFrame;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    return-object v0
.end method

.method static synthetic asa(Lcom/miui/antivirus/result/ScanResultFrame;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amo:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic asb(Lcom/miui/antivirus/result/ScanResultFrame;Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    return-object p1
.end method

.method static synthetic asc(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->aml:Z

    return p1
.end method

.method static synthetic asd(Lcom/miui/antivirus/result/ScanResultFrame;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amn:Z

    return p1
.end method

.method static synthetic ase(Lcom/miui/antivirus/result/ScanResultFrame;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/result/ScanResultFrame;->arQ(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic asf()[I
    .locals 3

    sget-object v0, Lcom/miui/antivirus/result/ScanResultFrame;->amq:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/antivirus/result/ScanResultFrame;->amq:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->values()[Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ame:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->amf:Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/antivirus/result/ScanResultFrame;->amq:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public arR()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public arS()V
    .locals 4

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/ScanResultFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AutoPasteListView;

    iput-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFy(I)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFz(I)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    iget-object v1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amh:Lcom/miui/antivirus/result/i;

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/AutoPasteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/customview/AutoPasteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amk:Lcom/miui/common/customview/AutoPasteListView;

    new-instance v1, Lcom/miui/antivirus/result/z;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/result/z;-><init>(Lcom/miui/antivirus/result/ScanResultFrame;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/customview/AutoPasteListView;->aFA(Lcom/miui/common/customview/b;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getPaddingLeft()I

    move-result v2

    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/miui/antivirus/result/ScanResultFrame;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/result/ScanResultFrame;->arU()V

    :cond_1
    return-void
.end method

.method public arT()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->ami:Lcom/miui/antivirus/result/DataModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    instance-of v2, v0, Lcom/miui/antivirus/result/Advertisement;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Advertisement;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/g;->atk(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public arV(Landroid/content/Context;Lcom/miui/antivirus/result/DataModel;Lcom/miui/antivirus/result/i;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amg:Lcom/miui/antivirus/result/DataModel;

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amh:Lcom/miui/antivirus/result/i;

    return-void
.end method

.method public arW(Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amj:Lcom/miui/common/d/f;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/result/ScanResultFrame;->asf()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/a;->arO()Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/result/AbsResultModel$ResultCardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Lcom/miui/antivirus/result/BaseModel;

    invoke-virtual {v0, p2}, Lcom/miui/antivirus/result/BaseModel;->onClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    if-lez p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/result/ScanResultFrame;->amp:Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
