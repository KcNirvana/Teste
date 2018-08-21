.class public Lcom/flybird/FBTable;
.super Lcom/flybird/FBView;
.source "FBTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBTable$Item;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FBTable"


# instance fields
.field public docMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/flybird/FBDocument;",
            ">;"
        }
    .end annotation
.end field

.field public idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayDataNew:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/flybird/FBTable$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterDoc:Lcom/flybird/FBDocument;

.field private mFooterView:Landroid/view/View;

.field private mHeaderDoc:Lcom/flybird/FBDocument;

.field private mHeaderView:Landroid/view/View;

.field private mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOnItemClick:Ljava/lang/String;

.field private mPullRefreshView:Lcom/flybird/APPullRefreshView;

.field private pullToRefresh:Z

.field private pushToLoadMore:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/flybird/APPullRefreshView;

    invoke-direct {v0, p1}, Lcom/flybird/APPullRefreshView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBTable;->docMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/flybird/FBTable;->pullToRefresh:Z

    iput-boolean v3, p0, Lcom/flybird/FBTable;->pushToLoadMore:Z

    iget-object v0, p0, Lcom/flybird/FBTable;->mView:Landroid/view/View;

    check-cast v0, Lcom/flybird/APPullRefreshView;

    iput-object v0, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    iget-object v0, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    new-instance v1, Lcom/flybird/FBListView;

    invoke-direct {v1, p1}, Lcom/flybird/FBListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/flybird/APPullRefreshView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    new-instance v2, Lcom/flybird/FBTable$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/flybird/FBTable$1;-><init>(Lcom/flybird/FBTable;Lcom/alipay/birdnest/api/BirdNestEngine$l;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/flybird/APPullRefreshView;->setRefreshListener(Lcom/flybird/APPullRefreshView$RefreshListener;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    invoke-virtual {v0, v3}, Lcom/flybird/APPullRefreshView;->setEnablePull(Z)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBTable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBTable;->pullToRefresh:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flybird/FBTable;)Lcom/flybird/APPullRefreshView;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flybird/FBTable;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flybird/FBTable;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/flybird/FBTable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable;->mOnItemClick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flybird/FBTable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBTable;->pushToLoadMore:Z

    return v0
.end method

.method static synthetic access$600(Lcom/flybird/FBTable;Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/flybird/FBTable;->createInnerFbDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;

    move-result-object v0

    return-object v0
.end method

.method private createInnerFbDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    sget-object v3, Lcom/alipay/android/app/template/FBResourceClient$Type;->INNER_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v0, p1, v3}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/flybird/FBDocumentAssistor;->extractDataFromTplStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/flybird/FBTable;->retrieveTemplate(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v0, v3, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p2, "{}"

    :cond_1
    iget-object v3, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    if-eqz v3, :cond_9

    new-instance v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v3, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    invoke-direct {v1, v3}, Lcom/alipay/birdnest/api/BirdNestEngine$g;-><init>(Lcom/alipay/birdnest/api/BirdNestEngine$g;)V

    iput-object p2, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    sget-object v3, Lcom/alipay/android/app/template/FBResourceClient$Type;->INNER_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    iput-object v3, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->c:Lcom/alipay/android/app/template/FBResourceClient$Type;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_8

    iput-object v0, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Lcom/alipay/birdnest/api/BirdNestEngine$g;)Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBDocument;

    :goto_3
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    if-nez v0, :cond_7

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Thread: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "FBTable instance: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mDoc: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", mDoc.param: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    if-nez v0, :cond_5

    const-string/jumbo v0, "Null"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "current calling stack: \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    if-eqz v4, :cond_6

    move v0, v2

    :goto_5
    array-length v5, v4

    if-ge v0, v5, :cond_6

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    iput-object v0, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method

.method public static native nativeNodeToJson(J)Ljava/lang/String;
.end method

.method private retrieveTemplate(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v2

    iget-object v1, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    invoke-static {v1, p1}, Lcom/flybird/FBDocumentAssistor;->readAssetsFile(Lcom/flybird/FBDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v1}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FBTable"

    const-string/jumbo v4, "retrieve assets template exception "

    invoke-static {v3, v4, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-virtual {v2, p1, v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Lcom/flybird/AutoScrollMoreListAdapter;
    .locals 4

    new-instance v0, Lcom/flybird/FBTable$3;

    iget-object v1, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/flybird/FBTable$3;-><init>(Lcom/flybird/FBTable;Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public doDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/flybird/AutoScrollMoreListAdapter;->clearData()V

    :cond_0
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    return-void
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "refresh-style"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "false"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/flybird/FBTable;->pullToRefresh:Z

    iget-object v0, p0, Lcom/flybird/FBTable;->mPullRefreshView:Lcom/flybird/APPullRefreshView;

    iget-boolean v1, p0, Lcom/flybird/FBTable;->pullToRefresh:Z

    invoke-virtual {v0, v1}, Lcom/flybird/APPullRefreshView;->setEnablePull(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "loadmore-style"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "false"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/flybird/FBTable;->pushToLoadMore:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "separator-color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v3, v3, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_1
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v3, 0x0

    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dataSource"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flybird/FBTable;->mNode:J

    invoke-static {v0, v1}, Lcom/flybird/FBTable;->nativeNodeToJson(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "FBTable"

    const-string/jumbo v1, "transform to json failed!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "rows"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string/jumbo v0, "sections"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_4

    move v0, v3

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "FBTable"

    const-string/jumbo v1, "rows config is invalid!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_7

    move v4, v3

    move v1, v3

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_17

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    new-instance v5, Lcom/flybird/FBTable$Item;

    const/4 v9, -0x1

    invoke-direct {v5, v0, v4, v9}, Lcom/flybird/FBTable$Item;-><init>(Lorg/json/JSONObject;II)V

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_16

    move v5, v3

    move v2, v1

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_5

    iget-object v9, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    new-instance v10, Lcom/flybird/FBTable$Item;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v10, v1, v4, v5}, Lcom/flybird/FBTable$Item;-><init>(Lorg/json/JSONObject;II)V

    invoke-virtual {v9, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_5
    move v1, v0

    move v0, v5

    :goto_6
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_15

    move v4, v3

    move v2, v1

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_6

    iget-object v8, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    new-instance v9, Lcom/flybird/FBTable$Item;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v9, v1, v5, v4}, Lcom/flybird/FBTable$Item;-><init>(Lorg/json/JSONObject;II)V

    invoke-virtual {v8, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move v5, v3

    move v1, v3

    :goto_8
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_14

    move v4, v3

    move v2, v1

    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_8

    iget-object v8, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    new-instance v9, Lcom/flybird/FBTable$Item;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v10, -0x1

    invoke-direct {v9, v1, v10, v2}, Lcom/flybird/FBTable$Item;-><init>(Lorg/json/JSONObject;II)V

    invoke-virtual {v8, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_a
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_8

    :cond_9
    const-string/jumbo v0, "onitemclick"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBTable;->mOnItemClick:Ljava/lang/String;

    const-string/jumbo v0, "header"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_c

    const-string/jumbo v0, "tpl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v0, "tplId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flybird/FBTable;->createInnerFbDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/flybird/FBTable;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/flybird/FBTable;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_b
    iput-object v0, p0, Lcom/flybird/FBTable;->mHeaderDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBTable;->mHeaderView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flybird/FBTable;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/FBTable;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_c
    const-string/jumbo v0, "footer"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_f

    const-string/jumbo v0, "tpl"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v0, "tplId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flybird/FBTable;->createInnerFbDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/flybird/FBDocument;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/flybird/FBTable;->mFooterView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/flybird/FBTable;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_e
    iput-object v0, p0, Lcom/flybird/FBTable;->mFooterDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBTable;->mFooterView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flybird/FBTable;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/FBTable;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_f
    move v1, v3

    :goto_b
    iget-object v0, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBTable$Item;

    if-eqz v0, :cond_10

    iget-object v2, v0, Lcom/flybird/FBTable$Item;->model:Lorg/json/JSONObject;

    if-nez v2, :cond_11

    :cond_10
    :goto_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_11
    iget-object v0, v0, Lcom/flybird/FBTable$Item;->model:Lorg/json/JSONObject;

    const-string/jumbo v2, "tplId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/flybird/FBTable;->idMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBTable"

    const-string/jumbo v2, "exception in updateEvent():"

    invoke-static {v1, v2, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_12
    :try_start_1
    iget-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/flybird/FBTable;->createListAdapter()Lcom/flybird/AutoScrollMoreListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_d
    iget-object v0, p0, Lcom/flybird/FBTable;->mOnItemClick:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/flybird/FBTable$2;

    invoke-direct {v1, p0}, Lcom/flybird/FBTable$2;-><init>(Lcom/flybird/FBTable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    iget-object v1, p0, Lcom/flybird/FBTable;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flybird/FBTable;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/flybird/FBTable;->mArrayDataNew:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2, v3}, Lcom/flybird/AutoScrollMoreListAdapter;->setListAndData(Landroid/content/Context;Landroid/widget/ListView;Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/flybird/FBTable;->mListAdapter:Lcom/flybird/AutoScrollMoreListAdapter;

    invoke-virtual {v0}, Lcom/flybird/AutoScrollMoreListAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :cond_14
    move v0, v1

    goto/16 :goto_a

    :cond_15
    move v0, v1

    goto/16 :goto_5

    :cond_16
    move v0, v1

    goto/16 :goto_4

    :cond_17
    move v0, v4

    goto/16 :goto_6
.end method
