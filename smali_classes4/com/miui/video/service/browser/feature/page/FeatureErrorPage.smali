.class public Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureErrorPage.java"


# instance fields
.field private errorLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->errorLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->errorLayout:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage$1;-><init>(Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    return-void
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->errorLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureErrorPage;->errorLayout:Landroid/view/View;

    :cond_0
    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    return-void
.end method
