.class public Lcom/miui/weather2/model/SecondaryPageListItem;
.super Lcom/miui/weather2/model/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/lang/String;

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/content/Context;

.field private F:Lcom/miui/weather2/model/w;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Z

.field private J:I

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/miui/weather2/structures/DeepLinkInfo;

.field private O:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/weather2/model/w;IZI)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/model/v;-><init>()V

    const/16 v0, 0x89

    const-string v1, "weather_info_style_abtest_new"

    const-string v2, "original"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/e;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->C:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->F:Lcom/miui/weather2/model/w;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->a:Z

    iput p3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->H:I

    iput-boolean p4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->I:Z

    iput p5, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->J:I

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/model/SecondaryPageListItem;)Lcom/miui/weather2/structures/DeepLinkInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/model/SecondaryPageListItem;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/model/SecondaryPageListItem;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->O:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;

    invoke-direct {v1, p0}, Lcom/miui/weather2/model/SecondaryPageListItem$LandingPageListener;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    iput-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->O:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v1, v1, Lcom/miui/weather2/structures/DeepLinkInfo;->mFullInfo:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->O:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v1, v1, Lcom/miui/weather2/structures/DeepLinkInfo;->mFullInfo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startApp(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v1, v1, Lcom/miui/weather2/structures/DeepLinkInfo;->mFullInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->startDownloadApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/miui/weather2/model/SecondaryPageListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    return-object v0
.end method

.method private b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    iget-object v1, v1, Lcom/miui/weather2/structures/DeepLinkInfo;->mFullInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    const-string v2, "Index"

    iget v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->H:I

    iget-boolean v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->I:Z

    iget v5, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->J:I

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/miui/weather2/model/SecondaryPageListItem;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->H:I

    return v0
.end method

.method static synthetic d(Lcom/miui/weather2/model/SecondaryPageListItem;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->I:Z

    return v0
.end method

.method static synthetic e(Lcom/miui/weather2/model/SecondaryPageListItem;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->J:I

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exposure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "VIEW"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://o2o.api.xiaomi.com"

    invoke-static {v0}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/model/q;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    iget v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->o:I

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/weather2/model/q;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v2, Lcom/miui/weather2/model/aa;

    invoke-direct {v2, p0}, Lcom/miui/weather2/model/aa;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/c/d;->a(Lcom/miui/weather2/model/q;Lretrofit/Callback;)V

    :cond_1
    const-string v0, "info_view"

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->B:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "CLICK"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://o2o.api.xiaomi.com"

    invoke-static {v0}, Lcom/miui/weather2/c/d;->a(Ljava/lang/String;)Lcom/miui/weather2/c/d;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/model/q;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    iget v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->o:I

    const/4 v5, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/weather2/model/q;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    new-instance v2, Lcom/miui/weather2/model/z;

    invoke-direct {v2, p0}, Lcom/miui/weather2/model/z;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/c/d;->a(Lcom/miui/weather2/model/q;Lretrofit/Callback;)V

    :cond_1
    const-string v0, "info_click"

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->B:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->A:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "template"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->f:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Wth2:SecondaryPageListItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportEvent() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", template = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "weather_index_statistics"

    invoke-static {v2, p1, v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->B:Ljava/lang/String;

    const-string v4, "inside"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->B:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "1"

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-static {p4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    const-string v2, "app"

    iget v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->H:I

    iget-boolean v4, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->I:Z

    iget v5, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->J:I

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->z:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "2"

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, p3, p1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AD_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected e()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->F:Lcom/miui/weather2/model/w;

    invoke-virtual {v0, p0}, Lcom/miui/weather2/model/w;->a(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    iget-boolean v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "CLOSE"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/model/SecondaryPageListItem;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->K:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ab;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/ab;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->K:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->K:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public g()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->L:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/model/ac;

    invoke-direct {v0, p0}, Lcom/miui/weather2/model/ac;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->L:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->L:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->M:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->M:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/IndexDataListDataImageTagBean;

    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->M:Ljava/util/List;

    new-instance v2, Lcom/miui/weather2/model/ad;

    invoke-direct {v2, p0}, Lcom/miui/weather2/model/ad;-><init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->M:Ljava/util/List;

    goto :goto_0
.end method

.method public i()V
    .locals 4

    const-string v0, "APP_START_DOWNLOAD"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public j()V
    .locals 4

    const-string v0, "APP_DOWNLOAD_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public k()V
    .locals 4

    const-string v0, "APP_INSTALL_SUCCESS"

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/weather2/tools/u;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecondaryPageListItem{mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->E:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->F:Lcom/miui/weather2/model/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewMonitorUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEx=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsCommercial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTemplate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemViewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->n:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAppCommercial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndexType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClickEvent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExposureEvent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCloseEvent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPositionInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStatKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mButtonOnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCloseOnClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTagOnClickListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->M:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeepLinkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->N:Lcom/miui/weather2/structures/DeepLinkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeepLinkListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/SecondaryPageListItem;->O:Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
