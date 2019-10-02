.class public Lcom/miui/video/base/feed/MiVideoCommonUIFactory;
.super Lcom/miui/video/common/feed/DefaultUIFactory;
.source "MiVideoCommonUIFactory.java"


# static fields
.field public static final LAYOUT_MEDIATION_BIG_CARD:I = 0x1

.field protected static final TYPE_MEDIATION_BIG_CARD:Ljava/lang/String; = "mediation_big_card"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    return-void
.end method


# virtual methods
.method public getUILayoutType(Ljava/lang/String;)I
    .locals 1

    const-string v0, "mediation_big_card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/video/common/feed/DefaultUIFactory;->getUILayoutType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->retriveLayoutType(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->mUIRecyclerListener:Lcom/miui/video/common/feed/IUIRecyclerCreateListener;

    invoke-virtual {p0}, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->getStyle()I

    move-result v2

    invoke-interface {v1, p1, v0, p3, v2}, Lcom/miui/video/common/feed/IUIRecyclerCreateListener;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/common/feed/DefaultUIFactory;->getUIRecyclerView(Landroid/content/Context;ILandroid/view/ViewGroup;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;

    invoke-virtual {p0}, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->getStyle()I

    move-result v0

    invoke-direct {p2, p1, p3, v0}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    move-object p1, p2

    check-cast p1, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;

    invoke-virtual {p0}, Lcom/miui/video/base/feed/MiVideoCommonUIFactory;->getUIRecyclerListView()Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/miui/video/base/ad/mediation/ui/UICardMediationBig;->setUIRecyclerListView(Ljava/lang/ref/WeakReference;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/DefaultUIFactory;->getUIView(Landroid/content/Context;IILandroid/view/ViewGroup;)Lcom/miui/video/framework/base/ui/UIBase;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
